import 'package:flutter/material.dart';

import 'theme_constants.dart';

class ThemeGradients extends ThemeExtension<ThemeGradients> {
  final LinearGradient buttonGradient;

  const ThemeGradients({
    required this.buttonGradient,
  });

  @override
  ThemeExtension<ThemeGradients> copyWith({
    LinearGradient? buttonGradient,
  }) {
    return ThemeGradients(
      buttonGradient:
      buttonGradient ?? this.buttonGradient,
    );
  }

  @override
  ThemeExtension<ThemeGradients> lerp(
      ThemeExtension<ThemeGradients>? other,
      double t,
      ) {
    if (other is! ThemeGradients) {
      return this;
    }

    return ThemeGradients(
      buttonGradient:
      LinearGradient.lerp(buttonGradient, other.buttonGradient, t)!,
    );
  }

  static get light => const ThemeGradients(
    buttonGradient: AppColors.buttonGradient,
  );

  static get dark => const ThemeGradients(
    buttonGradient: AppColorsDark.buttonGradient,
  );
}