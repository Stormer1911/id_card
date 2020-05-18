import 'package:flutter/material.dart';
import 'package:idcard/pages/homeAnimated.dart';
import 'package:idcard/pages/qrCode.dart';
import 'package:idcard/pages/settings.dart';
import 'package:idcard/sharedPrefs.dart';

void main() => runApp(
      MaterialApp(initialRoute: '/', routes: {
        '/': (context) => HomeAnimated(),
        'qr': (context) => QrCode(),
        'se': (context) => Settings(),
      }),
    );
