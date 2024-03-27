import 'package:flutter/material.dart';
import '../theme.dart';

class DarkAppTheme implements AppTheme {
  const DarkAppTheme();

  @override
  ThemeData get theme => ThemeData(
        extensions: [
          ThemeGradients.dark,
          ThemeColors.dark,
        ],
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: AppTextStyles.largeLabel.apply(color: AppColorsDark.form),
          hintStyle: AppTextStyles.largeLabel.apply(color: AppColorsDark.form),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          errorStyle: AppTextStyles.label.apply(color: AppColorsDark.error),
          suffixStyle: AppTextStyles.body.apply(color: AppColorsDark.onPrimary),
          focusColor: AppColorsDark.focus,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColorsDark.form,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
        useMaterial3: true,
        colorScheme: const ColorScheme(
          primary: AppColorsDark.focus,
          onPrimary: AppColorsDark.onPrimary,
          secondary: AppColorsDark.coldGreen,
          onSecondary: AppColorsDark.onSecondary,
          tertiary: AppColorsDark.coldGreen,
          onTertiary: AppColorsDark.onSecondary,
          error: AppColorsDark.error,
          onError: AppColorsDark.onError,
          background: AppColorsDark.background,
          onBackground: AppColorsDark.onPrimary,
          brightness: Brightness.dark,
          surface: AppColorsDark.background,
          onSurface: AppColorsDark.onPrimary,
          errorContainer: AppColorsDark.errorContainer,
          onErrorContainer: AppColorsDark.onErrorContainer,
          outline: AppColorsDark.form,
          shadow: AppColorsDark.onFilledButton,
          scrim: AppColorsDark.onFilledButton,
        ),
        secondaryHeaderColor: AppColorsDark.tableMain,
        hintColor: AppColorsDark.tableLabel,
        splashColor: AppColorsDark.splash,
        textTheme: textTheme,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              AppTextStyles.bodyLarge.apply(
                decoration: TextDecoration.underline,
              ),
            ),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.pressed)
                  ? AppColorsDark.disabled
                  : AppColorsDark.focus;
            }),
            elevation: MaterialStateProperty.all(0),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? AppColorsDark.splash
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
                return AppColorsDark.form;
              }
              if (states.contains(MaterialState.selected)) {
                return AppColorsDark.focus;
              }
              if (states.any(interactiveStates.contains)) {
                return AppColorsDark.onPrimary;
              }
              return AppColorsDark.radioButton;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                if (states.contains(MaterialState.hovered)) {
                  return AppColorsDark.focus.withOpacity(0.08);
                }
                if (states.contains(MaterialState.focused)) {
                  return AppColorsDark.focus.withOpacity(0.12);
                }
                if (states.contains(MaterialState.pressed)) {
                  return AppColorsDark.onPrimary.withOpacity(0.12);
                }
              } else {
                if (states.contains(MaterialState.hovered)) {
                  return AppColorsDark.onPrimary.withOpacity(0.08);
                }
                if (states.contains(MaterialState.focused)) {
                  return AppColorsDark.onPrimary.withOpacity(0.12);
                }
                if (states.contains(MaterialState.pressed)) {
                  return AppColorsDark.focus.withOpacity(0.12);
                }
              }
              return null;
            },
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColorsDark.tableLabel,
          thickness: 1,
          space: 1,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColorsDark.background,
          foregroundColor: AppColorsDark.onPrimary,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle:
              AppTextStyles.headline.apply(color: AppColorsDark.onPrimary),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(AppTextStyles.subtitle),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColorsDark.disabled;
              } else {
                return AppColorsDark.coldGreen;
              }
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColorsDark.onDisabled;
              } else {
                return AppColorsDark.onSecondary;
              }
            }),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? AppColorsDark.splash
                    : null;
              },
            ),
            elevation: MaterialStateProperty.all(0),
            surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(const StadiumBorder()),
            iconColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColorsDark.onDisabled;
              } else {
                return AppColorsDark.onSecondary;
              }
            }),
            iconSize:
                MaterialStateProperty.all(AppTextStyles.subtitle.fontSize),
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColorsDark.focus,
          selectionColor: AppColorsDark.selection,
          selectionHandleColor: AppColorsDark.focus,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(AppTextStyles.largeLabel),
            backgroundColor:
                MaterialStateProperty.all(AppColorsDark.filledButton),
            foregroundColor:
                MaterialStateProperty.all(AppColorsDark.onFilledButton),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? AppColorsDark.splash
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
            iconColor: MaterialStateProperty.all(AppColorsDark.onFilledButton),
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
