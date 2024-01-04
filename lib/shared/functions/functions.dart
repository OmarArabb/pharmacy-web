import 'package:fluttertoast/fluttertoast.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

void showToast(S translator,String message){
  Fluttertoast.showToast(
      msg: message,
      timeInSecForIosWeb: 2,
      webBgColor:
      "linear-gradient(to right, #1E334F, #3B639C)",
      webPosition: translator.toastPosition,
      textColor: secondaryColor);
}