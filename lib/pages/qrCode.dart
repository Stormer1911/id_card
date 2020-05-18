import 'package:flutter/material.dart';
import 'package:idcard/pages/appBar.dart';
import 'package:vcard/vcard.dart';
import 'package:idcard/contact.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatelessWidget {
  final VCard contact = Contact().getStormer1911();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: idAppBar(context, "Share via QR Code"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
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
                      style: Theme.of(context).primaryTextTheme.bodyText1,
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
                  backgroundColor: Theme.of(context).accentColor,
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
