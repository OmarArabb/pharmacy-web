// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.icon,
    required this.controller,
    this.onChange,
    required this.label,
    this.onSubmit,
    this.validator,
    this.onTap,
    this.popupMenuButton, required this.textInputAction
  });

  final TextEditingController controller;
  final String label;
  IconData? icon;
  IconData? suffixIcon;
  final PopupMenuButton? popupMenuButton;
  final Function(String value)? onChange;
  final Function(String value)? onSubmit;
  final void Function()? onTap;
  final String? Function(String? value)? validator;
  final TextInputAction textInputAction;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 160,
      child: TextFormField(
        style: const TextStyle(
          fontSize: 14
        ),
        onTap: onTap,
        textInputAction: textInputAction,
        controller: controller,
        onChanged: onChange,
        onFieldSubmitted: onSubmit,
        validator: validator,

        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) Icon(icon),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  label,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
            suffix: popupMenuButton,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: secondaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: secondaryColor))),
      ),
    );
  }
}



