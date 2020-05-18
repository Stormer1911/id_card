import 'package:flutter/material.dart';
import 'package:idcard/pages/home.dart';
import 'package:idcard/pages/qrCode.dart';
import 'package:idcard/pages/settings.dart';
import 'package:idcard/sharedPrefs.dart';

final Color background = Colors.grey[850];

final Color qrCodeColor = Colors.amber[400];

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomeAnimated(),
          'qr': (context) => QrCode(),
          'settings': (context) => Settings(),
        },
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.grey[850],
          accentColor: Colors.amber,
          appBarTheme: AppBarTheme(
            color: Colors.grey[900],
          ),
          primaryTextTheme: TextTheme(
            headline1: TextStyle(
              fontStyle: FontStyle.italic,
              letterSpacing: 4,
              color: Colors.amber,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 35,
              letterSpacing: 2,
              color: Colors.amber,
            ),
            bodyText2: TextStyle(
              fontStyle: FontStyle.italic,
              letterSpacing: 2,
              fontSize: 20,
              color: Colors.amber[600],
            ),
          ),
        ),
      ),
    );
