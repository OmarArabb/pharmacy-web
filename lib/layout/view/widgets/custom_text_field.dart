// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.icon,
      required this.controller,
      this.onChange,
      required this.label,
      this.onSubmit,
      this.autoFoucs = false});

  final TextEditingController controller;
  final String label;
  IconData? icon;
  final Function(String value)? onChange;
  final Function(String value)? onSubmit;
  final bool autoFoucs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 160,
      child: TextField(
        autofocus: autoFoucs,
        controller: controller,
        onChanged: onChange,
        onSubmitted: onSubmit,
        decoration: InputDecoration(
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
