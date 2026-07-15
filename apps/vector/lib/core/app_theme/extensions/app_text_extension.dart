import 'package:flutter/material.dart';

class AppTextExtension extends ThemeExtension<AppTextExtension> {
  AppTextExtension({
    required this.heading1,
    required this.body,
    required this.title,
  });

  final TextStyle body;
  final TextStyle title;
  final TextStyle heading1;

  @override
  ThemeExtension<AppTextExtension> copyWith({
    TextStyle? body,
    TextStyle? title,
    TextStyle? heading1,
  }) {
    return AppTextExtension(
      body: body ?? this.body,
      title: title ?? this.title,
      heading1: heading1 ?? this.heading1,
    );
  }

  @override
  ThemeExtension<AppTextExtension> lerp(
    covariant ThemeExtension<AppTextExtension>? other,
    double t,
  ) {
    if (other is! AppTextExtension) return this;
    return AppTextExtension(
      heading1: TextStyle.lerp(heading1, other.heading1, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
    );
  }
}
