import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptData {
  static encrypt.Encrypted? encrypted;
  static var decrypted;

  String encryptAES({required String plainText, required String encryptKey}) {
    final key = encrypt.Key.fromUtf8(encryptKey);
    final iv = encrypt.IV.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted!.base64.toString();
  }

  String decryptAES({required String plainText, required String encryptKey}) {
    final key = encrypt.Key.fromUtf8(encryptKey);
    final iv = encrypt.IV.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(key));
    decrypted = encrypter.decrypt(encrypt.Encrypted.from64(plainText), iv: iv);
    return decrypted.toString();
  }
}
