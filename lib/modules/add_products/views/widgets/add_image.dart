// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pharmacy_project/shared/constants.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';


class AddImage extends StatelessWidget {
  AddImage({
    super.key, required this.imagePicker,required this.photo
  });

  ImagePicker? imagePicker;
  XFile? photo;

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: borderRadius,
      child: Material(
        color: Colors.grey[200],
        child: InkWell(
          onTap: () async {
            imagePicker = ImagePicker();
            photo = await imagePicker!.pickImage(source: ImageSource.gallery);
            print(photo.toString());
          },
          splashColor: mainColor,
          child: const SizedBox(
            width: 110,
            height: 110,
            child: Icon(
              Icons.add_photo_alternate_outlined,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}