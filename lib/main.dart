import 'package:flutter/material.dart';
import 'package:idcard/pages/home.dart';
import 'package:idcard/pages/qrCode.dart';
import 'package:idcard/sharedPrefs.dart';

void main() => runApp(
      MaterialApp(initialRoute: '/', routes: {
        '/': (context) => Home(),
        'qr': (context) => QrCode(),
      }),
    );
