import 'package:flutter/material.dart';

Widget idAppBar(BuildContext context, String title) {
  return AppBar(
    title: Center(
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(title, style: Theme.of(context).primaryTextTheme.headline1),
      ),
    ),
    backgroundColor: Theme.of(context).appBarTheme.color,
  );
}
