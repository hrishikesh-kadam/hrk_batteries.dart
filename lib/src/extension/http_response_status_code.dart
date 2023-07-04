extension HttpResponseStatusCode on int {
  bool is1xx() {
    return this >= 100 && this <= 199;
  }

  bool is2xx() {
    return this >= 200 && this <= 299;
  }

  bool is3xx() {
    return this >= 300 && this <= 399;
  }

  bool is4xx() {
    return this >= 400 && this <= 499;
  }

  bool is5xx() {
    return this >= 500 && this <= 599;
  }
}
