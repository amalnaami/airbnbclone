import 'dart:async';

import 'package:airbnbclone/core/localization/app_language.dart';
import 'package:airbnbclone/data/prefs_helper/prefs_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

///
class AppBloc extends Bloc<AppEvent, AppState> {
  ///
  AppBloc(this._prefsHelper) : super(const AppState.init());

  final PrefsHelper _prefsHelper;

  Future<int> _tryGetAppLanguage() async {
    try {
      final appLanguage = await _prefsHelper.getAppLanguage();
      return appLanguage;
    } catch (_) {
      return AppLanguageKeys.EN;
    }
  }
}
