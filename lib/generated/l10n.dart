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

  /// `English Name`
  String get nameItem {
    return Intl.message(
      'English Name',
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

  /// `Please,Fill all data`
  String get emptyData {
    return Intl.message(
      'Please,Fill all data',
      name: 'emptyData',
      desc: '',
      args: [],
    );
  }

  /// `right`
  String get toastPosition {
    return Intl.message(
      'right',
      name: 'toastPosition',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Create New Category`
  String get createNewCategory {
    return Intl.message(
      'Create New Category',
      name: 'createNewCategory',
      desc: '',
      args: [],
    );
  }

  /// `Create New Factory`
  String get createNewFactory {
    return Intl.message(
      'Create New Factory',
      name: 'createNewFactory',
      desc: '',
      args: [],
    );
  }

  /// `English name`
  String get enName {
    return Intl.message(
      'English name',
      name: 'enName',
      desc: '',
      args: [],
    );
  }

  /// `Arabic name`
  String get arName {
    return Intl.message(
      'Arabic name',
      name: 'arName',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLang {
    return Intl.message(
      'Change Language',
      name: 'changeLang',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Select Category`
  String get selectCategory {
    return Intl.message(
      'Select Category',
      name: 'selectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Select Factory`
  String get selectFactory {
    return Intl.message(
      'Select Factory',
      name: 'selectFactory',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `made_by_name`
  String get factoryName {
    return Intl.message(
      'made_by_name',
      name: 'factoryName',
      desc: '',
      args: [],
    );
  }

  /// `Category_name`
  String get categoryName {
    return Intl.message(
      'Category_name',
      name: 'categoryName',
      desc: '',
      args: [],
    );
  }

  /// `marketing_name`
  String get name {
    return Intl.message(
      'marketing_name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get All {
    return Intl.message(
      'All',
      name: 'All',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get email {
    return Intl.message(
      'Email Address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Pharmacy Name`
  String get pharmacyName {
    return Intl.message(
      'Pharmacy Name',
      name: 'pharmacyName',
      desc: '',
      args: [],
    );
  }

  /// `Pharmacist Name`
  String get pharmicstName {
    return Intl.message(
      'Pharmacist Name',
      name: 'pharmicstName',
      desc: '',
      args: [],
    );
  }

  /// `Update Status Order`
  String get upateOrderStatus {
    return Intl.message(
      'Update Status Order',
      name: 'upateOrderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Update Payment Status`
  String get paymentStatus {
    return Intl.message(
      'Update Payment Status',
      name: 'paymentStatus',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural, zero{Sent} one{In Preparation} other{Delivered}}`
  String orderStatus(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Sent',
      one: 'In Preparation',
      other: 'Delivered',
      name: 'orderStatus',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, zero{Paid} other{Unpaid}}`
  String orderPaymentStatus(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Paid',
      other: 'Unpaid',
      name: 'orderPaymentStatus',
      desc: '',
      args: [howMany],
    );
  }

  /// `SP`
  String get sp {
    return Intl.message(
      'SP',
      name: 'sp',
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
