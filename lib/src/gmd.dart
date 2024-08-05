import 'exceptions/exception.dart';

class GoogleMapsDirections {
  static String? _backendAuthority;
  static String? _backendPath;

  static String get backendAuthority {
    if (_backendAuthority == null) {
      throw DirectionsException(
        status: "invalid-backendAuthority",
        message: "Invalid backendAuthority or not set",
      );
    }
    return _backendAuthority!;
  }

  static String get backendPath {
    if (_backendPath == null) {
      throw DirectionsException(
        status: "invalid-backendAuthority",
        message: "Invalid backendAuthority or not set",
      );
    }
    return _backendPath!;
  }

  /// Initialize plugin.
  static void init({
    required String backendAuthority,
    required String backendPath,
  }) {
    _backendAuthority = backendAuthority;
    _backendPath = backendPath;
  }
}
