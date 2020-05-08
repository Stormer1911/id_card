import 'package:flutter/material.dart';
import 'package:vcard/vcard.dart';
import 'package:idcard/contact.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatelessWidget {
  final double letterSpacingHeader = 4;
  final double letterSpacing = 2;
  final Color text = Colors.amber;
  final VCard contact = Contact().getStormer1911();
  final Color background = Colors.grey[850];
  final Color backgroundAppBar = Colors.grey[900];
  final Color qrCodeColor = Colors.amber[400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Share via QR Code",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              letterSpacing: 2,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: backgroundAppBar,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
          child: Column(
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
                child: QrImage(
                  data: contact.getFormattedString(),
                  version: QrVersions.auto,
                  size: 300,
                  backgroundColor: qrCodeColor ,
                  gapless: true,
                ),
              )
            ],
          ),
      ),
    );
  }
}
