import 'package:airbnbclone/core/localization/app_language.dart';
import 'package:airbnbclone/core/localization/app_localizations.dart';
import 'package:airbnbclone/views/AllViews/all_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// App class to handle localization
class App extends StatefulWidget {
  /// constructor
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: localeSubjectAppLanguage.distinct(),

      /// We can determine the initial language here by passing a Locale object
      initialData: lang(langID: 0),
      builder: (context, snapshotLanguage) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const AllViews(),
          locale: getLocale(snapshotLanguage),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          /// The Supported Languages
          supportedLocales: supportedLanguages,
        );
      },
    );
  }

  /// Separate the [Locale] object via function and pass the [langID]
  /// passing this [lang] into the [initialData] within the [StreamBuilder]
  Locale lang({required int langID}) {
    return const Locale('en', '');
  }

  /// Separate the [Locale] object via function and pass the [snapshotLanguage]
  /// passing this [getLocale] into the [locale] within the [MaterialApp]
  Locale getLocale(AsyncSnapshot<Object> snapshotLanguage) {
    return const Locale('en', '');
  }

  static const supportedLanguages = [
    Locale('en', ''), // English Language
  ];
}
