// DO NOT EDIT.
// This file is generated by **figma_tokens_to_class**, please do not edit manually.

import 'package:flutter/material.dart';

class AppThemeData {
  final Auxiliary auxiliary;
  final Bg bg;
  final Fg fg;
  final _Function function;

  AppThemeData({
    required this.auxiliary,
    required this.bg,
    required this.fg,
    required this.function,
  });

  factory AppThemeData.light() {
    return AppThemeData(
      auxiliary: Auxiliary(
        green: const Color(0xff11CD75),
        orange: const Color(0xffFF6A00),
        red: const Color(0xffF2494A),
        rose: const Color(0xffFF3377),
        violet: const Color(0xff7559FF),
        yellow: const Color(0xffF2AA19),
      ),
      bg: Bg(
        bg1: const Color(0xffF3F4F5),
        bg2: const Color(0xffEDEEEF),
        bg3: const Color(0xffFFFFFF),
      ),
      fg: Fg(
        b10: const Color.fromARGB(25, 26, 32, 51),
        b100: const Color(0xff1A2033),
        b20: const Color(0xffD1D2D6),
        b30: const Color(0xffBBBDC2),
        b40: const Color(0xffA3A6AD),
        b5: const Color.fromARGB(12, 26, 32, 51),
        b60: const Color(0xff767985),
        b95: const Color.fromARGB(242, 26, 32, 51),
        black: const Color(0xff000000),
        blue1: const Color(0xff198CFE),
        blue2: const Color.fromARGB(76, 25, 140, 255),
        blue3: const Color.fromARGB(25, 25, 140, 255),
        white1: const Color(0xffFFFFFF),
        widget: const Color.fromARGB(178, 64, 64, 64),
      ),
      function: _Function(
        green1: const Color(0xff00BF7F),
        green3: const Color.fromARGB(25, 0, 191, 127),
        red1: const Color(0xffF2494A),
        red2: const Color.fromARGB(76, 242, 73, 74),
        red3: const Color.fromARGB(25, 242, 73, 74),
        yellow1: const Color(0xffFFB726),
        yellow3: const Color.fromARGB(25, 255, 183, 38),
      ),
    );
  }

  factory AppThemeData.dark() {
    return AppThemeData(
      auxiliary: Auxiliary(
        green: const Color(0xff0EA65F),
        orange: const Color(0xffD95A00),
        red: const Color(0xffCC3E3E),
        rose: const Color(0xffD92B65),
        violet: const Color(0xff634CD9),
        yellow: const Color(0xffCC8F15),
      ),
      bg: Bg(
        bg1: const Color(0xff000000),
        bg2: const Color(0xff141414),
        bg3: const Color(0xff1F1F1F),
      ),
      fg: Fg(
        b10: const Color.fromARGB(25, 255, 255, 255),
        b100: const Color(0xffFFFFFF),
        b20: const Color(0xff4C4C4C),
        b30: const Color(0xff626262),
        b40: const Color(0xff797979),
        b5: const Color.fromARGB(12, 255, 255, 255),
        b60: const Color(0xffA5A5A5),
        b95: const Color.fromARGB(242, 255, 255, 255),
        black: const Color(0xff000000),
        blue1: const Color(0xff1677D9),
        blue2: const Color.fromARGB(76, 22, 119, 217),
        blue3: const Color.fromARGB(25, 22, 119, 217),
        white1: const Color(0xffFFFFFF),
        widget: const Color.fromARGB(178, 64, 64, 64),
      ),
      function: _Function(
        green1: const Color(0xff009966),
        green3: const Color.fromARGB(25, 0, 153, 102),
        red1: const Color(0xffCC3E3E),
        red2: const Color.fromARGB(76, 204, 62, 62),
        red3: const Color.fromARGB(25, 204, 62, 62),
        yellow1: const Color(0xffD99C20),
        yellow3: const Color.fromARGB(25, 217, 156, 32),
      ),
    );
  }
}

class _Function {
  final Color green1;
  final Color green3;
  final Color red1;
  final Color red2;
  final Color red3;
  final Color yellow1;
  final Color yellow3;

  _Function({
    required this.green1,
    required this.green3,
    required this.red1,
    required this.red2,
    required this.red3,
    required this.yellow1,
    required this.yellow3,
  });
}

class Fg {
  final Color b10;
  final Color b100;
  final Color b20;
  final Color b30;
  final Color b40;
  final Color b5;
  final Color b60;
  final Color b95;
  final Color black;
  final Color blue1;
  final Color blue2;
  final Color blue3;
  final Color white1;
  final Color widget;

  Fg({
    required this.b10,
    required this.b100,
    required this.b20,
    required this.b30,
    required this.b40,
    required this.b5,
    required this.b60,
    required this.b95,
    required this.black,
    required this.blue1,
    required this.blue2,
    required this.blue3,
    required this.white1,
    required this.widget,
  });
}

class Bg {
  final Color bg1;
  final Color bg2;
  final Color bg3;

  Bg({
    required this.bg1,
    required this.bg2,
    required this.bg3,
  });
}

class Auxiliary {
  final Color green;
  final Color orange;
  final Color red;
  final Color rose;
  final Color violet;
  final Color yellow;

  Auxiliary({
    required this.green,
    required this.orange,
    required this.red,
    required this.rose,
    required this.violet,
    required this.yellow,
  });
}