// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(howMany) =>
      "${Intl.plural(howMany, zero: 'مدفوع', other: 'غير مدفوع')}";

  static String m1(howMany) =>
      "${Intl.plural(howMany, zero: 'تم الٳرسال', one: 'قيد التحضير', other: 'مستلمة')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "All": MessageLookupByLibrary.simpleMessage("الكل"),
        "addItemBu": MessageLookupByLibrary.simpleMessage("ٳضافة المنتج"),
        "addItems": MessageLookupByLibrary.simpleMessage("ٳضافة منتجات"),
        "address": MessageLookupByLibrary.simpleMessage("العنوان"),
        "arName": MessageLookupByLibrary.simpleMessage("الاسم بالعربية"),
        "categoryItem": MessageLookupByLibrary.simpleMessage("التصنيف"),
        "categoryName":
            MessageLookupByLibrary.simpleMessage("Arabic_Category_name"),
        "change": MessageLookupByLibrary.simpleMessage("تغيير"),
        "changeLang": MessageLookupByLibrary.simpleMessage("تغيير اللغة"),
        "city": MessageLookupByLibrary.simpleMessage("المدينة"),
        "close": MessageLookupByLibrary.simpleMessage("ٳغلاق"),
        "create": MessageLookupByLibrary.simpleMessage("ٳنشاء"),
        "createNewCategory":
            MessageLookupByLibrary.simpleMessage("ٳنشاء تصنيف جديد"),
        "createNewFactory":
            MessageLookupByLibrary.simpleMessage("ٳنشاء مصنع جديد"),
        "email": MessageLookupByLibrary.simpleMessage("الٳيميل"),
        "emptyData":
            MessageLookupByLibrary.simpleMessage("يرجى ملء كامل البيانات"),
        "enName": MessageLookupByLibrary.simpleMessage("الاسم بالٳنجليزية"),
        "expDateItem": MessageLookupByLibrary.simpleMessage("انتهاء الصلاحية"),
        "factoryItem": MessageLookupByLibrary.simpleMessage("المصنع"),
        "factoryName":
            MessageLookupByLibrary.simpleMessage("made_by_Arabic_name"),
        "imageItem": MessageLookupByLibrary.simpleMessage("الصورة"),
        "name": MessageLookupByLibrary.simpleMessage("arabic_name"),
        "nameItem": MessageLookupByLibrary.simpleMessage("الاسم بالعربية"),
        "notFound": MessageLookupByLibrary.simpleMessage("غير موجود"),
        "numberItem": MessageLookupByLibrary.simpleMessage("الرقم"),
        "orderPaymentStatus": m0,
        "orderStatus": m1,
        "orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
        "paymentStatus":
            MessageLookupByLibrary.simpleMessage("تحديث حالة الدفع"),
        "pharmacyName": MessageLookupByLibrary.simpleMessage("اسم الصيدلية"),
        "pharmicstName": MessageLookupByLibrary.simpleMessage("اسم الصيدلاني"),
        "phone": MessageLookupByLibrary.simpleMessage("الهاتف"),
        "priceItem": MessageLookupByLibrary.simpleMessage("السعر"),
        "products": MessageLookupByLibrary.simpleMessage("المنتجات"),
        "quantityItem": MessageLookupByLibrary.simpleMessage("الكمية"),
        "report": MessageLookupByLibrary.simpleMessage("التقرير"),
        "saveItems": MessageLookupByLibrary.simpleMessage("حفظ"),
        "scientificNameItem":
            MessageLookupByLibrary.simpleMessage("الاسم العلمي"),
        "search": MessageLookupByLibrary.simpleMessage("بحث"),
        "selectCategory": MessageLookupByLibrary.simpleMessage("اختر التصنيف"),
        "selectFactory": MessageLookupByLibrary.simpleMessage("اختر المصنع"),
        "settings": MessageLookupByLibrary.simpleMessage("الٳعدادت"),
        "sp": MessageLookupByLibrary.simpleMessage("ل.س"),
        "toastPosition": MessageLookupByLibrary.simpleMessage("left"),
        "total": MessageLookupByLibrary.simpleMessage("المجموع"),
        "upateOrderStatus":
            MessageLookupByLibrary.simpleMessage("تحديث حالة الطلب")
      };
}
