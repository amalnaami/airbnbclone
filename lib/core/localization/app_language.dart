// ignore_for_file: constant_identifier_names

import 'package:rxdart/rxdart.dart';

/// Stream to change the language globally
BehaviorSubject<int> localeSubjectAppLanguage = BehaviorSubject<int>();

/// Change language function
void changeAppLanguage(int choice) => localeSubjectAppLanguage.sink.add(choice);

/// Supported languages keys
class AppLanguageKeys {
  /// English language key = 0
  static const EN = 0;
}
