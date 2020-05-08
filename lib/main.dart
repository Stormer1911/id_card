import 'package:flutter/material.dart';
import 'package:idcard/pages/home.dart';

void main() => runApp(
      MaterialApp(initialRoute: '/', routes: {
        '/': (context) => Home(),
      }),
    );
