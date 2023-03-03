/*
 * @FilePath       : /social/lib/app/theme/app_theme.dart
 * 
 * @Info           : 
 * 
 * @Author         : Whiskee Chan
 * @Date           : 2022-01-07 16:59:17
 * @Version        : 1.0.0
 * 
 * Copyright 2022 iDreamSky FanBook, All Rights Reserved.
 * 
 * @LastEditors    : Whiskee Chan
 * @LastEditTime   : 2022-03-11 16:57:28
 * 
 */
import 'package:flutter/material.dart';
import 'package:lib_theme/themes.dart';

/// 设计规范 https://idreamsky.feishu.cn/wiki/wikcnfMNP9YPqralTmDuWl8PSKc
///
/// 如果遇到 8A8F99，替换成 8D93A6，即 divierColor
/// 如果遇到 F5F5F8，替换成 F5F6FA，即 scaffoldBackgroundColor
/// 如果遇到 646A73，替换成 5C6273，即 iconColor
/// 如果遇到 8F959E，替换成 8D93A6，即 textTheme.headline2.color
///
const _fbPrimaryColor = 0xFF198CFE;
const _primarySwatch = MaterialColor(
  _fbPrimaryColor,
  <int, Color>{
    50: Color(0xFFFFEBEE),
    100: Color(0xFFFFCDD2),
    200: Color(0xFFEF9A9A),
    300: Color(0xFFE57373),
    400: Color(0xFFEF5350),
    500: Color(_fbPrimaryColor),
    600: Color(0xFFE53935),
    700: Color(0xFFD32F2F),
    800: Color(0xFF1452CC),
    900: Color(0xFFB71C1C),
  },
);

// 设计：图标灰
const _iconGray = Color(0xFF5C6273);
// 设计：文字黑
const _fontColor = Color(0xFF1A2033);
// 设计：背景灰
const _backgroundGray = Color(0xFFF5F6FA);
// 设计：浅灰色。用户页面上的浅色区域，文本、图标或者分割线
const _lightGray = Color(0xFF8F959E);

final ThemeData appThemeData = ThemeData(
  primarySwatch: _primarySwatch,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: _backgroundGray,
  iconTheme: const IconThemeData(color: _iconGray, size: 24),
  // 这个颜色值也会用来表示 UI 页面上的浅色部分（图标和文本），从目前的规范定义上看，就使用 dividerColor
  dividerColor: _lightGray.withOpacity(0.1),
  dividerTheme: const DividerThemeData(
      // color 会使用 dividerColor，无需设置
      // color: const Color(0xFF8F959E).withOpacity(0.15),
      space: 0,
      thickness: 0.5),
  disabledColor: _iconGray,
  textTheme: const TextTheme(
    headline1: TextStyle(color: _fontColor, fontSize: 22),
    // headline2 仅定义颜色值，用在页面上较灰色的文字展示
    headline2: TextStyle(color: _lightGray),
    bodyText1: TextStyle(color: _fontColor, fontSize: 17),
    bodyText2: TextStyle(color: _fontColor, fontSize: 16),
    caption: TextStyle(color: _iconGray, fontSize: 14),
  ),
);

class AppTheme extends InheritedWidget {
  final AppThemeData theme;
  final AppThemeData? darkTheme;

  const AppTheme({
    Key? key,
    required this.theme,
    this.darkTheme,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  static AppThemeData of(BuildContext context) {
    final appTheme = context.dependOnInheritedWidgetOfExactType<AppTheme>()!;
    return WidgetsBinding.instance.window.platformBrightness == Brightness.dark
        ? appTheme.darkTheme ?? appTheme.theme
        : appTheme.theme;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return oldWidget.theme != theme || oldWidget.darkTheme != darkTheme;
  }
}
