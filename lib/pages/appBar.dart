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
    actions: <Widget>[
      // action button
      IconButton(
        icon: Icon(choices[0].icon),
        onPressed: () {Navigator.pushNamed(context, 'settings');},
      ),

      /* PopupMenuButton<Choice>(

        itemBuilder: (BuildContext context) {
          return choices.skip(2).map((Choice choice) {
            return PopupMenuItem<Choice>(
              value: choice,
              child: Text(choice.title),
            );
          }).toList();
        },
      ),*/
    ],
  );
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Settings', icon: Icons.settings),
];
