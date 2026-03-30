import 'package:flutter/material.dart';
import 'package:vector/core/app_theme/extenstions/app_color_extension.dart';
import 'package:vector/core/app_theme/tokens/colors/color_palette.dart';

class AppTheme {
  static final AppColorExtension _lightColors = AppColorExtension(
    background: ColorPalette.neutral100,
    surface: ColorPalette.neutral900,
    success: ColorPalette.neutral100,
    error: ColorPalette.neutral900,
  );

  static final AppColorExtension _darkColors = AppColorExtension(
    background: ColorPalette.neutral900,
    surface: ColorPalette.neutral100,
    success: ColorPalette.neutral100,
    error: ColorPalette.neutral900,
  );

  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: _lightColors.background,
      extensions: [_lightColors],
    );
  }

  static ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: _darkColors.background,
      extensions: [_darkColors],
    );
  }
}
