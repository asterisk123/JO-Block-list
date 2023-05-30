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

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enter_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_phone_number {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enter_password {
    return Intl.message(
      'Enter your password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an account? `
  String get do_have_account {
    return Intl.message(
      'Do you have an account? ',
      name: 'do_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Don't you have an account? `
  String get Dont_have_account {
    return Intl.message(
      'Don\'t you have an account? ',
      name: 'Dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Hi`
  String get hi {
    return Intl.message(
      'Hi',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Count of Your blacklist is: `
  String get count_blacklist {
    return Intl.message(
      'Count of Your blacklist is: ',
      name: 'count_blacklist',
      desc: '',
      args: [],
    );
  }

  /// `Search here`
  String get search_here {
    return Intl.message(
      'Search here',
      name: 'search_here',
      desc: '',
      args: [],
    );
  }

  /// `My complaints`
  String get my_complaints {
    return Intl.message(
      'My complaints',
      name: 'my_complaints',
      desc: '',
      args: [],
    );
  }

  /// `Order amount`
  String get order_amount {
    return Intl.message(
      'Order amount',
      name: 'order_amount',
      desc: '',
      args: [],
    );
  }

  /// `Block List`
  String get block_list {
    return Intl.message(
      'Block List',
      name: 'block_list',
      desc: '',
      args: [],
    );
  }

  /// `Number of complaints`
  String get number_complaints {
    return Intl.message(
      'Number of complaints',
      name: 'number_complaints',
      desc: '',
      args: [],
    );
  }

  /// `Please Fill Culprit Information below`
  String get fill_culprit_information {
    return Intl.message(
      'Please Fill Culprit Information below',
      name: 'fill_culprit_information',
      desc: '',
      args: [],
    );
  }

  /// `Select who is match it (if is her exists)`
  String get select_match {
    return Intl.message(
      'Select who is match it (if is her exists)',
      name: 'select_match',
      desc: '',
      args: [],
    );
  }

  /// `Tell us more about your issue`
  String get tell_your_issue {
    return Intl.message(
      'Tell us more about your issue',
      name: 'tell_your_issue',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Enter culprit name`
  String get enter_culprit_name {
    return Intl.message(
      'Enter culprit name',
      name: 'enter_culprit_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter culprit MobileNumber`
  String get enter_culprit_MobileNumber {
    return Intl.message(
      'Enter culprit MobileNumber',
      name: 'enter_culprit_MobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter other mobile number `
  String get enter_other_mobile {
    return Intl.message(
      'Enter other mobile number ',
      name: 'enter_other_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Enter facebook link`
  String get enter_facebook_link {
    return Intl.message(
      'Enter facebook link',
      name: 'enter_facebook_link',
      desc: '',
      args: [],
    );
  }

  /// `Enter city name`
  String get enter_city_name {
    return Intl.message(
      'Enter city name',
      name: 'enter_city_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter address details`
  String get enter_address_details {
    return Intl.message(
      'Enter address details',
      name: 'enter_address_details',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get website {
    return Intl.message(
      'Website',
      name: 'website',
      desc: '',
      args: [],
    );
  }

  /// `Order date`
  String get order_date {
    return Intl.message(
      'Order date',
      name: 'order_date',
      desc: '',
      args: [],
    );
  }

  /// `Store`
  String get store {
    return Intl.message(
      'Store',
      name: 'store',
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
