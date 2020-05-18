import 'package:flutter/material.dart';
import 'package:idcard/contact.dart';
import 'package:vcard/vcard.dart';

class HomeAnimated extends StatefulWidget {
  @override
  _HomeAnimatedState createState() => _HomeAnimatedState();
}

class _HomeAnimatedState extends State<HomeAnimated> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  final double letterSpacingHeader = 4;
  final double letterSpacing = 2;
  final Color text = Colors.amber;
  final VCard contact = Contact().getStormer1911();
  final Color background = Colors.grey[850];
  final Color backgroundAppBar = Colors.grey[900];
  final Color qrCodeColor = Colors.amber[400];

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
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: text,
              letterSpacing: letterSpacing,
              fontSize: 20,
            ),
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
      backgroundColor: background,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Visitenkarte",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: text,
              letterSpacing: letterSpacingHeader,
            ),
          ),
        ),
        backgroundColor: backgroundAppBar,
      ),
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
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        letterSpacing: letterSpacingHeader,
                        color: text,
                      ),
                    ),
                    Text(
                      contact.nickname,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        letterSpacing: letterSpacingHeader,
                        fontSize: 20,
                        color: Colors.amber[600],
                      ),
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
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    letterSpacing: letterSpacing,
                    color: text,
                  ),
                ),
              ),
              Center(
                child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(contact.url,
                        style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            letterSpacing: letterSpacing,
                            color: text))),
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
