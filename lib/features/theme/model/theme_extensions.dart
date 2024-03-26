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

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color chartColorFirst;
  final Color chartColorSecond;
  final Color label;

  const ThemeColors({
    required this.chartColorFirst,
    required this.chartColorSecond,
    required this.label,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? chartColorFirst,
    Color? chartColorSecond,
    Color? label,
  }) {
    return ThemeColors(
      chartColorFirst:
      chartColorFirst ?? this.chartColorFirst,
      chartColorSecond:
      chartColorSecond ?? this.chartColorFirst,
      label: label ?? this.label,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other,
      double t,
      ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      chartColorFirst:
      Color.lerp(chartColorFirst, other.chartColorFirst, t)!,
      chartColorSecond:
      Color.lerp(chartColorSecond, other.chartColorSecond, t)!,
      label:
      Color.lerp(label, other.label, t)!,
    );
  }

  static get light => const ThemeColors(
    chartColorFirst: AppColors.coldGreen,
    chartColorSecond: AppColors.secondDiagramColor,
    label: AppColors.label,
  );

  static get dark => const ThemeColors(
    chartColorFirst: AppColorsDark.coldGreen,
    chartColorSecond: AppColorsDark.secondDiagramColor,
    label: AppColorsDark.label,
  );
}