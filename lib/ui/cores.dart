import 'dart:ui';

import 'package:flutter/material.dart';

class Cores {
  static const Color preto = Colors.black;
  static const Color branco = Colors.white;
  static const Color roxo = Colors.purple;
  static const Color laranja = Colors.orange;
  static const Color vermelho = Colors.red;
  static const Color azul = Colors.blue;
  static const Color verde = Colors.green;
  static const Color amarelo = Colors.yellow;
  static const Color rosa = Colors.pink;
  static const Color cinzaEscuro = Color(0xFFD3D3D3);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    String _hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (_hexColor.length == 6) {
      _hexColor = 'FF' + _hexColor;
    }
    return int.parse(_hexColor, radix: 16);
  }
}
