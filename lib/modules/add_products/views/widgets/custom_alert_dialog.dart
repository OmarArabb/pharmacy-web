import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/add_products/views/widgets/custom_alert_dialog_content.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key, required this.isCategory,
  });

  final bool isCategory;

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
      title: Text(isCategory ? S.of(context).selectCategory : S.of(context).selectFactory),
      content: CustomAlertDialogContent(
        isCategory: isCategory,
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(S.of(context).close))
      ],
    );
  }
}