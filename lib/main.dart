import 'package:flutter/material.dart';
import 'package:idcard/pages/homeAnimated.dart';
import 'package:idcard/pages/qrCode.dart';
import 'package:idcard/pages/settings.dart';
import 'package:idcard/sharedPrefs.dart';

final double letterSpacingHeader = 4;
final double letterSpacing = 2;
final Color text = Colors.amber;
final Color background = Colors.grey[850];
final Color backgroundAppBar = Colors.grey[900];
final Color qrCodeColor = Colors.amber[400];

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomeAnimated(),
          'qr': (context) => QrCode(),
          'se': (context) => Settings(),
        },
        theme: ThemeData(
          primaryColor: Colors.grey[850],
          primaryTextTheme: TextTheme(
            headline1: TextStyle(

            ),
          ),
        ),
      ),
    );
