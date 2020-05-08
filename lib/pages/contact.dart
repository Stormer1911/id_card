import 'package:qr_flutter/qr_flutter.dart';
import 'package:vcard/vcard.dart';

class Contact {
  VCard getStormer1911() {
    var vCard = VCard();
    vCard.nickname= 'Stormer1911';
    vCard.firstName = 'Christoph';
    vCard.middleName = 'Mirco';
    vCard.lastName = 'Müller';
    vCard.organization = 'MCD Services';
    vCard.photo.attachFromUrl(
        'https://www.xing.com/img/users/2/0/5/1eee2ac9b.17930129,4.1024x1024.jpg',
        'JPG');
    vCard.birthday = DateTime.parse("1994-07-07");
    vCard.jobTitle = 'Technical Consultant';
    vCard.url = 'https://github.com/Stormer1911';
    vCard.note = 'Notes on contact';
    vCard.email = 'mcd@mircochristoph.de';

    return vCard;
  }

  QrImage qrImage(){
   return QrImage(
      data: getStormer1911().getFormattedString(),
      version: QrVersions.auto,
      size: 200.0,
    );
  }
}
