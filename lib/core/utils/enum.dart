enum APIResultType {
  loading,
  success,
  failure,
  sessionExpired,
  noInternet,
  unauthorised,
  cacheError,
  notFound,
  timeOut
}

enum NetworkResultType {
  success,
  error,
  cacheError,
  timeOut,
  noInternet,
  unauthorised,
  notFound
}

enum GameName {
  twinMatch,
  towerOfHanoi,
}

enum CurrentHanoiDiskState {
  neutral,
  up,
  slide,
  down,
}

enum HanoiDiskMove {
  none,
  upMove,
  downMove,
  halfRight,
  halfLeft,
  fullRight,
  fullLeft
}
