import 'package:airbnbclone/views/AllViews/all_views.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllViews(),
      // locale: getLocale(snapshotLanguage),
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],

      /// The Supported Languages
      // supportedLocales: supportedLanguages,
    );
  }

  // /// Seperate the [Locale] object via a funciton and pass the [langID]
  // /// passing this [lang] into the [initialData] within the [StreamBuilder]
  // Locale lang({required int langID}) {
  //   return const Locale('en', '');
  // }
  //
  // /// Seperate the [Locale] object via a funciton and pass the [snapshotLanguage]
  // /// passing this [getLocale] into the [locale] within the [MaterialApp]
  // Locale getLocale(AsyncSnapshot snapshotLanguage) {
  //   return const Locale('en', '');
  // }
  //
  // static const supportedLanguages = [
  //   Locale('en', ''), // English Language
  // ];
}
