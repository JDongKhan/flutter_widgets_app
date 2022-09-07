import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';

///@Description TODO
///@Author jd
///

///加密工具
class EncryptUtils {
  static const MethodChannel _methodChannel = MethodChannel('encrypt');

  ///原生 AES128
  static Future<String?> AES128Encrypt(String content, String key) {
    return _methodChannel
        .invokeMethod('AES128Encrypt', {'content': content, 'key': key});
  }

  ///flutter AES128
  static String AESEncrypt(String content, String keyString) {
    var bytes = utf8.encode(keyString); // data being hashed
    var digest = md5.convert(bytes);
    List<int> md5Bytes = digest.bytes;
    Uint8List u = Uint8List.fromList(md5Bytes);
    final key = Key(u);
    // keyString = keyString.substring(0, 16);
    // final key = Key.fromUtf8(keyString);
    final iv = IV(u);
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
    final encrypted = encrypter.encrypt(content, iv: iv);
    return encrypted.base64;
  }

  static String SHA1(String content) {
    var bytes = utf8.encode(content); // data being hashed
    var digest = sha1.convert(bytes);
    return digest.toString();
  }

  static String SHA256(String content) {
    var bytes = utf8.encode(content); // data being hashed
    var digest = sha256.convert(bytes);
    return digest.toString();
  }

  static String MD5(String content) {
    var bytes = utf8.encode(content); // data being hashed
    var digest = md5.convert(bytes);
    return digest.toString();
  }

  /*
  * Base64加密
  */
  static String encodeBase64(String data) {
    var content = utf8.encode(data);
    var digest = base64Encode(content);
    return digest;
  }

  /*
  * Base64解密
  */
  static String decodeBase64(String data) {
    return String.fromCharCodes(base64Decode(data));
  }
}
