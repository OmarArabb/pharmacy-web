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

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Add Items`
  String get addItems {
    return Intl.message(
      'Add Items',
      name: 'addItems',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `No.`
  String get numberItem {
    return Intl.message(
      'No.',
      name: 'numberItem',
      desc: '',
      args: [],
    );
  }

  /// `Image`
  String get imageItem {
    return Intl.message(
      'Image',
      name: 'imageItem',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get nameItem {
    return Intl.message(
      'Name',
      name: 'nameItem',
      desc: '',
      args: [],
    );
  }

  /// `Scientific Name`
  String get scientificNameItem {
    return Intl.message(
      'Scientific Name',
      name: 'scientificNameItem',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get categoryItem {
    return Intl.message(
      'Category',
      name: 'categoryItem',
      desc: '',
      args: [],
    );
  }

  /// `Factory`
  String get factoryItem {
    return Intl.message(
      'Factory',
      name: 'factoryItem',
      desc: '',
      args: [],
    );
  }

  /// `Exp Date`
  String get expDateItem {
    return Intl.message(
      'Exp Date',
      name: 'expDateItem',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantityItem {
    return Intl.message(
      'Quantity',
      name: 'quantityItem',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get priceItem {
    return Intl.message(
      'Price',
      name: 'priceItem',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Add the Item`
  String get addItemBu {
    return Intl.message(
      'Add the Item',
      name: 'addItemBu',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get saveItems {
    return Intl.message(
      'Save',
      name: 'saveItems',
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
