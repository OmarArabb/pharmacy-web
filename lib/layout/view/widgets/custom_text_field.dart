import 'package:flutter/material.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.icon,
      required this.controller,
      required this.onChange,
      required this.label});

  final TextEditingController controller;
  final String label;
  IconData? icon;
  final Function(String value) onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 160,
      child: TextField(
        controller: controller,
        onChanged: onChange,
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
