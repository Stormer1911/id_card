import 'package:flutter/material.dart';
import 'package:idcard/contact.dart';
import 'package:vcard/vcard.dart';

import 'appBar.dart';

class HomeAnimated extends StatefulWidget {
  @override
  _HomeAnimatedState createState() => _HomeAnimatedState();
}

class _HomeAnimatedState extends State<HomeAnimated>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final VCard contact = Contact().getStormer1911();

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget entry({String key, IconData icon}) {
    return Center(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Icon(
            icon,
            color: Colors.amber,
            size: 25.0,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            key,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .apply(fontSizeFactor: 1.3),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Contact().writeContact(contact);
          Navigator.pushNamed(context, 'qr');
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.share),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      appBar: idAppBar(context, "Visitenkarte"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "${contact.firstName} ${contact.lastName}",
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    Text(
                      contact.nickname,
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyText1
                          .apply(fontSizeFactor: 0.8),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(contact.photo.url),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  contact.jobTitle,
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
              ),
              Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    contact.url,
                    style: Theme.of(context).primaryTextTheme.bodyText2,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: entry(key: contact.email, icon: Icons.email),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
