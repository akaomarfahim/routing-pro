/// Cross-cutting path/query keys only.
///
/// A path parameter that belongs to one feature (`orderId`, `productId`) is
/// declared by that feature's routes class, next to the path that uses it.
/// A global file for every key would become the god file again.
abstract final class RouteParams {
  const RouteParams._();

  /// Password-reset token (system route, used by the e-mailed deep link).
  static const token = 'token';
}

/// Query parameter keys shared across features.
abstract final class RouteQuery {
  const RouteQuery._();

  /// Where to send the user once the gate they hit is satisfied. It lives in
  /// the URL so a browser refresh mid-login does not lose their destination.
  static const from = 'from';

  /// The URL that produced a 403/404, for the error screens to display.
  static const attempted = 'attempted';

  static const search = 'q';
  static const status = 'status';
  static const page = 'page';
}
