import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray50 = fromHex('#e8f0f1');

  static Color red600 = fromHex('#eb3b34');

  static Color blueA700 = fromHex('#056dfa');

  static Color red600Cc = fromHex('#ccdc3545');

  static Color red60033 = fromHex('#33dc3545');

  static Color whiteA700Cc = fromHex('#ccfdfdfd');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#4a4f52');

  static Color blueGray90002 = fromHex('#2c2c2c');

  static Color blueGray90001 = fromHex('#2c2c2e');

  static Color indigo90019 = fromHex('#190b1854');

  static Color black90028 = fromHex('#28000000');

  static Color blueGray900 = fromHex('#29272e');

  static Color blueGray5001 = fromHex('#ecf3f4');

  static Color tealA700 = fromHex('#1dc9a0');

  static Color gray700 = fromHex('#634b5b');

  static Color gray400 = fromHex('#b9bcbe');

  static Color gray500 = fromHex('#929497');

  static Color gray800 = fromHex('#4d4d4d');

  static Color teal700Cc = fromHex('#cc198754');

  static Color teal70033 = fromHex('#33198754');

  static Color gray900 = fromHex('#191919');

  static Color amber500Cc = fromHex('#ccffc107');

  static Color amber50033 = fromHex('#33ffc107');

  static Color black9000c = fromHex('#0c000000');

  static Color gray300 = fromHex('#e1dee8');

  static Color black90033 = fromHex('#33000000');

  static Color bluegray400 = fromHex('#888888');

  static Color indigo900 = fromHex('#0b1854');

  static Color blue100 = fromHex('#c9dff5');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70001 = fromHex('#615f68');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
