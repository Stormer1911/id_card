import 'package:path_provider/path_provider.dart';
import 'package:vcard/vcard.dart';
import 'dart:io';
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
  
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/contact.vcard');
  }

  Future<File> writeContact(VCard contact) async {
    final file = await _localFile;

    // Write the file.
    return file.writeAsString(contact.getFormattedString());
  }

}
