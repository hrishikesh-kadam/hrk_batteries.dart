#!/usr/bin/env bash

set -e -o pipefail

echo "Checking Pre-requisite"

source ./tool/shell/logs-env.sh

check_command_on_path() {
  if [[ ! -x $(command -v "$1") ]]; then
    log_error_with_exit "$1 command not accessible from PATH" 1
  fi
}

check_directory_on_path() {
  local directory=$1
  if [[ $(uname -s) =~ ^"MINGW" ]]; then
    directory=$(cygpath "$directory")
  fi
  if [[ ! $PATH =~ $directory ]]; then
    log_error_with_exit "$1 directory not found on PATH" 1
  fi
}

check_command_on_path dart

if [[ $(uname -s) =~ ^"Darwin" ]]; then
  check_command_on_path brew
elif [[ $(uname -s) =~ ^"MINGW" ]]; then
  check_command_on_path pwsh
  if ! pwsh -NoProfile ./tool/shell/is-admin.ps1; then
    error_log_with_exit "Please run this script from Elevated Session" 1
  fi
  if [[ ! $GITHUB_ACTIONS ]]; then
    # winget is not yet available in GitHub Actions
    check_command_on_path winget
    WINGET_LINKS_PATH_WIN="$LOCALAPPDATA\Microsoft\WinGet\Links"
    WINGET_LINKS_PATH_NIX=$(cygpath "$WINGET_LINKS_PATH_WIN")
    if [[ ! $PATH =~ $WINGET_LINKS_PATH_NIX ]]; then
      if [[ $GITHUB_ACTIONS == "true" ]]; then
        echo "$WINGET_LINKS_PATH_WIN" >> "$GITHUB_PATH"
        PATH="$WINGET_LINKS_PATH_NIX:$PATH"
      else
        # Deliberately avoiding to set PATH by setx command
        log_error_with_exit "$WINGET_LINKS_PATH_NIX directory not found on PATH" 1
      fi
    fi
  fi
  check_command_on_path choco
fi

if [[ ! -x $(command -v lcov) ]]; then
  if [[ $(uname -s) =~ ^"Linux" ]]; then
    sudo apt install lcov
  elif [[ $(uname -s) =~ ^"Darwin" ]]; then
    brew install lcov
  elif [[ $(uname -s) =~ ^"MINGW" ]]; then
    choco install lcov
    : "${ChocolateyInstall:=C:\ProgramData\chocolatey}"
    LCOV_ROOT_WIN="$ChocolateyInstall\lib\lcov\tools\bin"
    LCOV_ROOT_NIX=$(cygpath "$LCOV_ROOT_WIN")
    if [[ ! $PATH =~ $LCOV_ROOT_NIX ]]; then
      if [[ $GITHUB_ACTIONS == "true" ]]; then
        echo "$LCOV_ROOT_WIN" >> "$GITHUB_PATH"
        PATH="$LCOV_ROOT_NIX:$PATH"
      else
        # Deliberately avoiding to set PATH by setx command
        log_error_with_exit "$LCOV_ROOT_NIX directory not found on PATH" 1
      fi
    fi
  fi
  lcov --version
fi

if [[ ! -x $(command -v yq) ]]; then
  if [[ $(uname -s) =~ ^"Linux" ]]; then
    sudo wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 \
      -O /usr/bin/yq
    sudo chmod +x /usr/bin/yq
  elif [[ $(uname -s) =~ ^"Darwin" ]]; then
    brew install yq
  elif [[ $(uname -s) =~ ^"MINGW" ]]; then
    if [[ $GITHUB_ACTIONS == "true" ]]; then
      choco install yq
    else
      winget install MikeFarah.yq
    fi
  fi
  yq --version
fi

print_in_green "Pre-requisite fulfilled"
