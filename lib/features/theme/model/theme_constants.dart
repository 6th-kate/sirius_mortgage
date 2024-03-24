import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static final headline = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final label = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 12,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final largeLabel = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final body = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final subtitle = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final tableLight = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final tableMedium = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 0,
      height: 1.4,
    ),
  );
  static final tableBold = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final tableTitle = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      letterSpacing: 0,
      height: 1.4,
    ),
  );

  static final bodyLarge = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      letterSpacing: 0,
      height: 1.4,
    ),
  );
}

abstract class AppColors {
  static const white = Color(0xFFFBFDF9);

  static const coldGreen = Color(0xFF86E7B8);
  static const lightGradient = Color(0xFFF2F5DE);
  static const lightGreen = Color(0xFFD4F1D4); //disabledColor
  static const onDisabled = Color(0xFF96C896);

  //onCard == buttonTitle
  static const onPrimary = Color(0xFF1E2620);
  static const label = Color(0xFF38473D);

//when focus/pressed -- cardLabel (label)
  static const radioButton = Color(0xFF607266);
  static const focus = Color(0xFF65C786);
  static const error = Color(0xFFD94E4E);
  static const errorContainer = Color(0xFFF6B1B1);
  static const onErrorContainer = Color(0xFF3D1010);
  static const form = Color(0xFFB1B7B3);
  static const secondDiagramColor = Color(0xFFD8EEBB);

  static const switchBackground = Color(0xFFE5F5E5);

  static const whiteSplash = Color(0x33FFFFFF);
  static const selection = Color(0x3365C786);
  static const filledButton = Color(0xFFEEF9EE);

//  static const primaryContainer = Color(0xFFFBFEFB);

  static const buttonGradient = LinearGradient(
    colors: [coldGreen, lightGradient],
  );
}
