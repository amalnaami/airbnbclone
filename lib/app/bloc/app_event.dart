part of 'app_bloc.dart';

///
abstract class AppEvent {
  /// empty constructor
  const AppEvent();
}

/// Class for changing the app language
class ChangeAppLanguage extends AppEvent {
  /// constructor
  const ChangeAppLanguage({required this.appLanguage});

  /// int variable for holding language number
  final int appLanguage;
}
