// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Change to Arabic`
  String get Change_lang {
    return Intl.message(
      'Change to Arabic',
      name: 'Change_lang',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get Dark_Mode {
    return Intl.message(
      'Dark Mode',
      name: 'Dark_Mode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get Light_Mode {
    return Intl.message(
      'Light Mode',
      name: 'Light_Mode',
      desc: '',
      args: [],
    );
  }

  /// `BMI Calculator`
  String get BMI_Calculator {
    return Intl.message(
      'BMI Calculator',
      name: 'BMI_Calculator',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get Gender {
    return Intl.message(
      'Gender',
      name: 'Gender',
      desc: '',
      args: [],
    );
  }

  /// `Height`
  String get Height {
    return Intl.message(
      'Height',
      name: 'Height',
      desc: '',
      args: [],
    );
  }

  /// `CM`
  String get CM {
    return Intl.message(
      'CM',
      name: 'CM',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get Weight {
    return Intl.message(
      'Weight',
      name: 'Weight',
      desc: '',
      args: [],
    );
  }

  /// `KG`
  String get KG {
    return Intl.message(
      'KG',
      name: 'KG',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get Calculate {
    return Intl.message(
      'Calculate',
      name: 'Calculate',
      desc: '',
      args: [],
    );
  }

  /// `Your BMI Results`
  String get Your_BMI_Results {
    return Intl.message(
      'Your BMI Results',
      name: 'Your_BMI_Results',
      desc: '',
      args: [],
    );
  }

  /// `Underweight`
  String get Underweight {
    return Intl.message(
      'Underweight',
      name: 'Underweight',
      desc: '',
      args: [],
    );
  }

  /// `Healthy`
  String get Healthy {
    return Intl.message(
      'Healthy',
      name: 'Healthy',
      desc: '',
      args: [],
    );
  }

  /// `Overweight`
  String get Overweight {
    return Intl.message(
      'Overweight',
      name: 'Overweight',
      desc: '',
      args: [],
    );
  }

  /// `Obese`
  String get Obese {
    return Intl.message(
      'Obese',
      name: 'Obese',
      desc: '',
      args: [],
    );
  }

  /// `Highly Obese`
  String get Highly_Obese {
    return Intl.message(
      'Highly Obese',
      name: 'Highly_Obese',
      desc: '',
      args: [],
    );
  }

  /// `Extremly Obese`
  String get Extremly_Obese {
    return Intl.message(
      'Extremly Obese',
      name: 'Extremly_Obese',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
