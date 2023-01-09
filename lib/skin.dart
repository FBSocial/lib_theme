import 'package:flutter/material.dart';
import 'package:lib_theme/web_light_theme.dart';
import 'package:lib_utils/universal_platform.dart';

import 'default_theme.dart';

/// 皮肤管理类
class Skin {
  /// 当前主题
  static DefaultTheme theme =
      UniversalPlatform.isMobileDevice ? DefaultTheme() : WebLightTheme();

  /// 当前主题数据
  static ThemeData? themeData = theme.themeData;
}
