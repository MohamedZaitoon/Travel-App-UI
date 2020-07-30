import 'package:flutter/material.dart';

Color hexColor(String hexCode) {
  List<String> hexDigits = hexCode.split('');
  int r = int.parse(hexDigits.sublist(0, 2).join(), radix: 16);
  int g = int.parse(hexDigits.sublist(2, 4).join(), radix: 16);
  int b = int.parse(hexDigits.sublist(4).join(), radix: 16);
  return Color.fromRGBO(r, g, b, 1);
}

final primaryColor = hexColor("dc1254");
final primaryColor900 = hexColor("981c44");

final secondryColor = hexColor("635c5c");
final accentColor = hexColor("eaeaea");
final backgroundColor = hexColor("0c0b0a");

final grey400 = hexColor("a2a2a2");

final errorColor = hexColor("b00020");
