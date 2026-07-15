import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  AppColorExtension({
    required this.background,
    required this.surface,
    required this.success,
    required this.error,
  });

  final Color background;
  final Color surface;
  final Color success;
  final Color error;

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? background,
    Color? surface,
    Color? success,
    Color? error,
  }) {
    return AppColorExtension(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      success: success ?? this.success,
      error: error ?? this.error,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
    covariant ThemeExtension<AppColorExtension>? other,
    double t,
  ) {
    if (other is! AppColorExtension) return this;
    return AppColorExtension(
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
    );
  }
}
