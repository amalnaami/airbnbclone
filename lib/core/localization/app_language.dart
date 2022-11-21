// ignore_for_file: constant_identifier_names

import 'package:rxdart/rxdart.dart';

var localeSubjectAppLanguage = BehaviorSubject<int>();

changeAppLanguage(int choice) => localeSubjectAppLanguage.sink.add(choice);

class AppLanguageKeys {
  static const EN = 0;
}
