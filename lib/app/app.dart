import 'package:airbnbclone/views/AllViews/all_views.dart';
import 'package:flutter/material.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllViews(),
    );
  }
}
