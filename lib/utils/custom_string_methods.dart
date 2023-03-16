import 'dart:math';

import 'package:intl/intl.dart';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

///RANDOM STRING GENERATOR
String getRandomString(int length) => String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length)),
      ),
    );

///STRING VALIDATION
bool isValidUrl(String val) {
  final bool isValid = RegExp(
    r'((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?',
  ).hasMatch(val);
  return isValid;
}

bool isValidEmail(String val) {
  final bool isValid = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(val);
  return isValid;
}

bool isValidUsername(String val) {
  final bool isValid = RegExp(r'^[A-Za-z0-9-._]*$').hasMatch(val);
  return isValid;
}

bool isValidTicket(String val) {
  final bool isValid = RegExp(r'^[A-Za-z0-9]*$').hasMatch(val);
  return isValid;
}

bool isValidPassword(String val) {
  final bool isValid = RegExp(
    r'^(?:(?=.*?[A-Z])(?:(?=.*?[0-9])(?=.*?[-!@#$%^&*()_[\]{},.<>+=])|(?=.*?[a-z])(?:(?=.*?[0-9])|(?=.*?[-!@#$%^&*()_[\]{},.<>+=])))|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[-!@#$%^&*()_[\]{},.<>+=]))[A-Za-z0-9!@#$%^&*()_[\]{},.<>+=-]{7,50}$',
  ).hasMatch(val);
  return isValid;
}

RegExp getValidPayoutAmountRegExp() {
  return RegExp(r'^(([1-9]\d*)|([0]{1}))(\.\d+)?$');
}

bool isValidString(String? val) {
  bool isValid = true;
  if (val == null || val.trim().isEmpty) {
    isValid = false;
  }
  return isValid;
}

///FORMAT NUMBER
String formatDecimalNumber(double val) {
  final NumberFormat numberFormat = NumberFormat('#,##0.00', "en_US");
  final String formattedNum = numberFormat.format(val);
  return formattedNum;
}

///OTHER
String getLastWordInString(String val) {
  final List<String> words = val.split(' ');
  return words.last;
}

String replaceLastWordInString(String originalString, String newWord) {
  if (originalString.split(' ').length == 1) {
    return newWord;
  } else {
    return "${originalString.substring(0, originalString.lastIndexOf(" "))} $newWord";
  }
}

String getNumberFromPrice(String originalString) {
  final String newString = originalString.replaceAll(RegExp(r'\$'), '').replaceAll(RegExp(','), '');

  return newString;
}

String getFormattedPhoneNumber(String phoneNumber) {
  final String formattedPhoneNumber = '(${phoneNumber.substring(2, 5)}) ${phoneNumber.substring(5, 8)}-${phoneNumber.substring(8, phoneNumber.length)}';
  return formattedPhoneNumber;
}

String getFileName(String url) {
  final RegExp regExp = RegExp(r'.+(\/|%2F)(.+)\?.+');

  final matches = regExp.allMatches(url);

  final match = matches.elementAt(0);

  return Uri.decodeFull(match.group(2)!);
}

List<String> getListOfUsernamesFromString(String val) {
  final List<String> usernames = [];
  final List<String> words = val.split(' ');
  for (final word in words) {
    if (word.startsWith('@')) {
      final String username = word.substring(1, word.length - 1);
      usernames.add(username);
    }
  }
  return usernames;
}

String getGiftAmountFromGiftID(int id) {
  String giftAmount = '1.00';
  if (id == 1) {
    giftAmount = '0.10';
  } else if (id == 2) {
    giftAmount = '0.50';
  } else if (id == 3) {
    giftAmount = '5.00';
  } else if (id == 4) {
    giftAmount = '25.00';
  } else if (id == 5) {
    giftAmount = '50.00';
  } else if (id == 6) {
    giftAmount = '100.00';
  } else if (id == 7) {
    giftAmount = '500.00';
  }
  return giftAmount;
}
