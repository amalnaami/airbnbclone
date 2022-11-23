part of 'app_bloc.dart';

/// The state class of the app
class AppState extends Equatable {
  ///
  const AppState._({this.appLanguage = 0});

  ///
  const AppState.init() : this._();

  /// app language number
  final int appLanguage;

  @override
  List<Object?> get props => [appLanguage];
}
