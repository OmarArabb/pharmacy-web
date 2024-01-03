// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(howMany) =>
      "${Intl.plural(howMany, zero: 'Paid', other: 'Unpaid')}";

  static String m1(howMany) =>
      "${Intl.plural(howMany, zero: 'Sent', one: 'In Preparation', other: 'Delivered')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "All": MessageLookupByLibrary.simpleMessage("All"),
        "addItemBu": MessageLookupByLibrary.simpleMessage("Add the Item"),
        "addItems": MessageLookupByLibrary.simpleMessage("Add Items"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "arName": MessageLookupByLibrary.simpleMessage("Arabic name"),
        "categoryItem": MessageLookupByLibrary.simpleMessage("Category"),
        "categoryName": MessageLookupByLibrary.simpleMessage("Category_name"),
        "change": MessageLookupByLibrary.simpleMessage("Change"),
        "changeLang": MessageLookupByLibrary.simpleMessage("Change Language"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "createNewCategory":
            MessageLookupByLibrary.simpleMessage("Create New Category"),
        "createNewFactory":
            MessageLookupByLibrary.simpleMessage("Create New Factory"),
        "email": MessageLookupByLibrary.simpleMessage("Email Address"),
        "emptyData":
            MessageLookupByLibrary.simpleMessage("Please,Fill all data"),
        "enName": MessageLookupByLibrary.simpleMessage("English name"),
        "expDateItem": MessageLookupByLibrary.simpleMessage("Exp Date"),
        "factoryItem": MessageLookupByLibrary.simpleMessage("Factory"),
        "factoryName": MessageLookupByLibrary.simpleMessage("made_by_name"),
        "imageItem": MessageLookupByLibrary.simpleMessage("Image"),
        "name": MessageLookupByLibrary.simpleMessage("marketing_name"),
        "nameItem": MessageLookupByLibrary.simpleMessage("English Name"),
        "numberItem": MessageLookupByLibrary.simpleMessage("No."),
        "orderPaymentStatus": m0,
        "orderStatus": m1,
        "orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "paymentStatus":
            MessageLookupByLibrary.simpleMessage("Update Payment Status"),
        "pharmacyName": MessageLookupByLibrary.simpleMessage("Pharmacy Name"),
        "pharmicstName":
            MessageLookupByLibrary.simpleMessage("Pharmacist Name"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "priceItem": MessageLookupByLibrary.simpleMessage("Price"),
        "products": MessageLookupByLibrary.simpleMessage("Products"),
        "quantityItem": MessageLookupByLibrary.simpleMessage("Quantity"),
        "report": MessageLookupByLibrary.simpleMessage("Report"),
        "saveItems": MessageLookupByLibrary.simpleMessage("Save"),
        "scientificNameItem":
            MessageLookupByLibrary.simpleMessage("Scientific Name"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "selectCategory":
            MessageLookupByLibrary.simpleMessage("Select Category"),
        "selectFactory": MessageLookupByLibrary.simpleMessage("Select Factory"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "sp": MessageLookupByLibrary.simpleMessage("SP"),
        "toastPosition": MessageLookupByLibrary.simpleMessage("right"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "upateOrderStatus":
            MessageLookupByLibrary.simpleMessage("Update Status Order")
      };
}
