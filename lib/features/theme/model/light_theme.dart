

import 'package:flutter/material.dart';
import '../theme.dart';

class LightAppTheme implements AppTheme {
  const LightAppTheme();

  @override
  ThemeData get theme => ThemeData(
    extensions: [
      ThemeGradients.light,
      ThemeColors.light,
    ],
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppTextStyles.largeLabel.apply(color: AppColors.form),
      hintStyle: AppTextStyles.largeLabel.apply(color: AppColors.form),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorStyle: AppTextStyles.label.apply(color: AppColors.error),
      suffixStyle: AppTextStyles.body.apply(color: AppColors.onPrimary),
      focusColor: AppColors.focus,
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.form,
          width: 1.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
    useMaterial3: true,
    colorScheme: const ColorScheme(
      primary: AppColors.focus,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.coldGreen,
      onSecondary: AppColors.onPrimary,
      tertiary: AppColors.coldGreen,
      onTertiary: AppColors.onPrimary,
      error: AppColors.error,
      onError: AppColors.white,
      background: AppColors.white,
      onBackground: AppColors.onPrimary,
      brightness: Brightness.light,
      surface: AppColors.white,
      onSurface: AppColors.onPrimary,
      onPrimaryContainer: AppColors.onPrimary,
      onSecondaryContainer: AppColors.onPrimary,
      errorContainer: AppColors.errorContainer,
      onErrorContainer: AppColors.onErrorContainer,
      outline: AppColors.form,
      shadow: AppColors.onPrimary,
      scrim: AppColors.onPrimary,
    ),
    splashColor: AppColors.whiteSplash,
    secondaryHeaderColor: AppColors.onPrimary,
    hintColor: AppColors.form,
    textTheme: textTheme,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(AppTextStyles.bodyLarge),
        foregroundColor: MaterialStateProperty.all(AppColors.focus),
        elevation: MaterialStateProperty.all(0),
        overlayColor: MaterialStateProperty.resolveWith(
              (states) {
            return states.contains(MaterialState.pressed)
                ? AppColors.whiteSplash
                : null;
          },
        ),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
            (states) {
          const Set<MaterialState> interactiveStates = <MaterialState>{
            MaterialState.pressed,
            MaterialState.hovered,
            MaterialState.focused,
          };
          if (states.contains(MaterialState.disabled)) {
            return AppColors.form;
          }
          if (states.contains(MaterialState.selected)) {
            return AppColors.focus;
          }
          if (states.any(interactiveStates.contains)) {
            return AppColors.onPrimary;
          }
          return AppColors.radioButton;
        },
      ),
      overlayColor: MaterialStateProperty.resolveWith(
            (states) {
          if (states.contains(MaterialState.selected)) {
            if (states.contains(MaterialState.hovered)) {
              return AppColors.focus.withOpacity(0.08);
            }
            if (states.contains(MaterialState.focused)) {
              return AppColors.focus.withOpacity(0.12);
            }
            if (states.contains(MaterialState.pressed)) {
              return AppColors.onPrimary.withOpacity(0.12);
            }
          } else {
            if (states.contains(MaterialState.hovered)) {
              return AppColors.onPrimary.withOpacity(0.08);
            }
            if (states.contains(MaterialState.focused)) {
              return AppColors.onPrimary.withOpacity(0.12);
            }
            if (states.contains(MaterialState.pressed)) {
              return AppColors.focus.withOpacity(0.12);
            }
          }
          return null;
        },
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.form,
      thickness: 1,
      space: 9,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.onPrimary,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle:
      AppTextStyles.headline.apply(color: AppColors.onPrimary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(AppTextStyles.subtitle),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.lightGreen;
          } else {
            return AppColors.coldGreen;
          }
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.onDisabled;
          } else {
            return AppColors.onPrimary;
          }
        }),
        overlayColor: MaterialStateProperty.resolveWith(
              (states) {
            return states.contains(MaterialState.pressed)
                ? AppColors.whiteSplash
                : null;
          },
        ),
        elevation: MaterialStateProperty.all(0),
        surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        iconColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.onDisabled;
          } else {
            return AppColors.onPrimary;
          }
        }),
        iconSize:
        MaterialStateProperty.all(AppTextStyles.subtitle.fontSize),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.focus,
      selectionColor: AppColors.selection,
      selectionHandleColor: AppColors.focus,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(AppTextStyles.largeLabel),
        backgroundColor: MaterialStateProperty.all(AppColors.filledButton),
        foregroundColor: MaterialStateProperty.all(AppColors.label),
        overlayColor: MaterialStateProperty.resolveWith(
              (states) {
            return states.contains(MaterialState.pressed)
                ? AppColors.whiteSplash
                : null;
          },
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: MaterialStateProperty.all(0),
        surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        iconColor: MaterialStateProperty.all(AppColors.label),
        iconSize:
        MaterialStateProperty.all(AppTextStyles.subtitle.fontSize),
      ),
    ),
  );

  @override
  TextTheme get textTheme => TextTheme(
    headlineSmall: AppTextStyles.headline,
    titleLarge: AppTextStyles.tableTitle,
    titleMedium: AppTextStyles.subtitle,
    titleSmall: AppTextStyles.tableBold,
    bodyLarge: AppTextStyles.bodyLarge,
    bodyMedium: AppTextStyles.body,
    bodySmall: AppTextStyles.tableMedium,
    labelLarge: AppTextStyles.largeLabel,
    labelMedium: AppTextStyles.tableLight,
    labelSmall: AppTextStyles.label,
  );
}
