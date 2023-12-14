import 'package:flutter/material.dart';
import 'package:pharmacy_project/shared/constants.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key, this.iconData, this.text, required this.onPressed});

  final IconData? iconData;
  final void Function()? onPressed;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: 160,
      height: 35,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      color: mainColor,
      child: Row(
        children: [
          Icon(
            iconData,
            color: secondaryColor,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text ?? '',
            style: TextStyle(
              fontFamily: 'Courgette',
              color: secondaryColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}