/// Layout breakpoints are measured against width, never against `kIsWeb`.
/// A docked tablet in landscape and a 1024px browser window must look the same.
abstract final class Breakpoints {
  const Breakpoints._();

  static const compact = 600.0; // phone
  static const medium = 1000.0; // tablet / small web
  static const expanded = 1400.0; // counter terminal / desktop web
}
