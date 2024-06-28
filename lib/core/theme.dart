import 'package:flutter/material.dart';

class AppTheme {
  // Define a primary color palette
  static const Color primaryColor = Color(0xFF6200EE);
  static const Color primaryVariant = Color(0xFF3700B3);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color secondaryVariant = Color(0xFF018786);
  static const Color backgroundColor = Color(0xFFF6F6F6);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color errorColor = Color(0xFFB00020);
  static const Color onPrimaryColor = Colors.white;
  static const Color onSecondaryColor = Colors.black;
  static const Color onBackgroundColor = Colors.black;
  static const Color onSurfaceColor = Colors.black;
  static const Color onErrorColor = Colors.white;

  // Define text styles
  static const TextStyle headline1 = TextStyle(
    fontSize: 96.0,
    fontWeight: FontWeight.bold,
    color: onBackgroundColor,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 60.0,
    fontWeight: FontWeight.bold,
    color: onBackgroundColor,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 48.0,
    fontWeight: FontWeight.bold,
    color: onBackgroundColor,
  );

  static const TextStyle headline4 = TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
    color: onBackgroundColor,
  );

  static const TextStyle headline5 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: onBackgroundColor,
  );

  static const TextStyle headline6 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: onBackgroundColor,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: onBackgroundColor,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: onBackgroundColor,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: onBackgroundColor,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: onBackgroundColor,
  );

  static const TextStyle button = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: onPrimaryColor,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: onBackgroundColor,
  );

  static const TextStyle overline = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.normal,
    color: onBackgroundColor,
  );

  // Define the app's theme data
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    primaryColorDark: primaryVariant,
    hintColor: secondaryColor,
    scaffoldBackgroundColor: backgroundColor,
    textTheme: const TextTheme(
      displayLarge: headline1,
      displayMedium: headline2,
      displaySmall: headline3,
      headlineMedium: headline4,
      headlineSmall: headline5,
      titleLarge: headline6,
      bodyLarge: bodyText1,
      bodyMedium: bodyText2,
      titleMedium: subtitle1,
      titleSmall: subtitle2,
      labelLarge: button,
      bodySmall: caption,
      labelSmall: overline,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
      error: errorColor,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      onSurface: onSurfaceColor,
      onError: onErrorColor,
    ).copyWith(error: errorColor).copyWith(surface: backgroundColor),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    primaryColorDark: primaryVariant,
    hintColor: secondaryColor,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      displayLarge: headline1.copyWith(color: Colors.white),
      displayMedium: headline2.copyWith(color: Colors.white),
      displaySmall: headline3.copyWith(color: Colors.white),
      headlineMedium: headline4.copyWith(color: Colors.white),
      headlineSmall: headline5.copyWith(color: Colors.white),
      titleLarge: headline6.copyWith(color: Colors.white),
      bodyLarge: bodyText1.copyWith(color: Colors.white),
      bodyMedium: bodyText2.copyWith(color: Colors.white),
      titleMedium: subtitle1.copyWith(color: Colors.white),
      titleSmall: subtitle2.copyWith(color: Colors.white),
      labelLarge: button.copyWith(color: Colors.white),
      bodySmall: caption.copyWith(color: Colors.white),
      labelSmall: overline.copyWith(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Color(0xFF121212),
      error: errorColor,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      onSurface: Colors.white,
      onError: onErrorColor,
    ).copyWith(surface: Colors.black).copyWith(error: errorColor),
  );
}
