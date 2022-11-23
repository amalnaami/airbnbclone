import 'package:shared_preferences/shared_preferences.dart';

/// Abstract class
abstract class IPrefsHelper {
  /// Retrieve the stored app language value
  Future<int> getAppLanguage();

  /// Initial Shared Preferences
  Future<SharedPreferences> getSharedPreferences();

  /// Store the app language value
  Future<bool> setAppLanguage(int value);
}
