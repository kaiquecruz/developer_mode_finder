import 'developer_mode_finder_platform_interface.dart';

class DeveloperModeFinder {
  /// Singleton instance of [DeveloperModeFinder].
  static final DeveloperModeFinder _instance = DeveloperModeFinder._internal();

  /// Factory constructor to return the singleton instance.
  factory DeveloperModeFinder() => _instance;

  DeveloperModeFinder._internal();

  /// Static shortcut to check if developer mode is enabled.
  static Future<bool> get isEnabled =>
      DeveloperModeFinderPlatform.instance.isDeveloperModeEnabled();

  /// Check if developer mode is enabled.
  Future<bool> isDeveloperModeEnabled() => isEnabled;
}

