import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

///@Description TODO
///@Author jd
extension AssetsPath on String {
  String get toAssets {
    assert(this != 'null', 'toAssets can not null');
    if (kIsWeb && kDebugMode) {
      return this;
    }
    return 'assets/$this';
  }

  String get toImg {
    assert(this != 'null', 'toImg can not null');
    return 'assets/images/$this';
  }

  Future<bool> isExist() async {
    final Uint8List encoded =
        utf8.encoder.convert(Uri(path: Uri.encodeFull(this)).path);
    final ByteData? asset = await ServicesBinding
        .instance.defaultBinaryMessenger
        .send('flutter/assets', encoded.buffer.asByteData());
    return asset != null;
  }

  Future<ByteData?>? fileContent() {
    final Uint8List encoded =
        utf8.encoder.convert(Uri(path: Uri.encodeFull(this)).path);
    return ServicesBinding.instance.defaultBinaryMessenger
        .send('flutter/assets', encoded.buffer.asByteData());
  }
}
