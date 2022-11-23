import 'dart:async';

import 'package:airbnbclone/core/localization/app_language.dart';
import 'package:airbnbclone/data/prefs_helper/prefs_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

/// the bloc class to controller the app state
class AppBloc extends Bloc<AppEvent, AppState> {
  /// constructor
  AppBloc(this._prefsHelper) : super(const AppState.init());

  final PrefsHelper _prefsHelper;

  /// Function to retrieve the app language from SharedPreferences
  Future<int> _tryGetAppLanguage() async {
    try {
      final appLanguage = await _prefsHelper.getAppLanguage();
      return appLanguage;
    } catch (_) {
      return AppLanguageKeys.EN;
    }
  }
}
