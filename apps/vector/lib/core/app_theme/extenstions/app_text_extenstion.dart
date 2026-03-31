import 'package:flutter/material.dart';

class AppTextExtenstion extends ThemeExtension<AppTextExtenstion> {
  AppTextExtenstion({
    required this.heading1,
    required this.body,
    required this.title,
  });

  final TextStyle body;
  final TextStyle title;
  final TextStyle heading1;

  @override
  ThemeExtension<AppTextExtenstion> copyWith({
    TextStyle? body,
    TextStyle? title,
    TextStyle? heading1,
  }) {
    return AppTextExtenstion(
      body: body ?? this.body,
      title: title ?? this.title,
      heading1: heading1 ?? this.heading1,
    );
  }

  @override
  ThemeExtension<AppTextExtenstion> lerp(
    covariant ThemeExtension<AppTextExtenstion>? other,
    double t,
  ) {
    if (other is! AppTextExtenstion) return this;
    return AppTextExtenstion(
      heading1: TextStyle.lerp(heading1, other.heading1, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
    );
  }
}
