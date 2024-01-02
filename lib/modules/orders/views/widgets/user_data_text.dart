import 'package:flutter/material.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class UserDataText extends StatelessWidget {
  const UserDataText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: const BoxDecoration(
              color: Colors.grey, shape: BoxShape.rectangle),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: TextStyle(
              color: mainColor.withOpacity(0.8),
              fontSize: 14
          ),
        )
      ],
    );
  }
}