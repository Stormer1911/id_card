import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:idcard/pages/contact.dart';
import 'package:vcard/vcard.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Home extends StatelessWidget {
  final double letterSpacingHeader = 4;
  final double letterSpacing = 2;
  final Color text = Colors.amber;
  final VCard contact = Contact().getStormer1911();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Share.share(contact.getFormattedString());
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.share),
      ),
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          "Visitenkarte",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: text,
            letterSpacing: letterSpacingHeader,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
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
              SizedBox(height: 10,),
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
              SizedBox(height: 10,),
              Center(
                child: Text(
                  contact.url,
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    letterSpacing: letterSpacing,
                    color: text,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.email,
                      color: Colors.amber,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      contact.email,
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
              ),
              Center(
                child: QrImage(
                  data: contact.getFormattedString(),
                  version: QrVersions.auto,
                  size: 200,
                  backgroundColor: Colors.amber[400],
                  gapless: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
