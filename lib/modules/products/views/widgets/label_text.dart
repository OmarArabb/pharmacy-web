import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String data;

  const LabelText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}