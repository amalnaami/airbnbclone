import 'dart:async';

import 'package:airbnbclone/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(
    () async {
      FlutterError.onError = (FlutterErrorDetails details) {
        Zone.current.handleUncaughtError(
          details.exception,
          details.stack ?? StackTrace.fromString("Unexpected"),
        );
      };
      runApp(const App());
    },
    (error, stackTrace) {
      print("Error: $error, stackTrace: $stackTrace");
    },
  );
}
