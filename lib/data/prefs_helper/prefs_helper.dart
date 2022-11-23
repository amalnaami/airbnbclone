import 'package:airbnbclone/core/contstant/shared_preferences.dart';
import 'package:airbnbclone/core/localization/app_language.dart';
import 'package:airbnbclone/data/prefs_helper/i_prefs_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Prefs Helper contains the implementation of all Shared Preferences functions
class PrefsHelper extends IPrefsHelper {
  @override
  Future<int> getAppLanguage() async {
    return (await getSharedPreferences())
            .getInt(SharedPreferencesConstants.appLanguage) ??
        AppLanguageKeys.EN;
  }

  @override
  Future<SharedPreferences> getSharedPreferences() {
    return SharedPreferences.getInstance();
  }

  @override
  Future<bool> setAppLanguage(int value) async {
    try {
      await (await getSharedPreferences()).setInt(
        SharedPreferencesConstants.appLanguage,
        value,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
