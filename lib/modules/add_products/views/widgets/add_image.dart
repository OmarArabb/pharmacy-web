// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';
import 'package:pharmacy_project/shared/constants.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class AddImage extends StatefulWidget {
  AddImage({super.key,});

  PlatformFile? file ;
  FilePickerResult? result ;


  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {



    return ClipRRect(
      borderRadius: borderRadius,
      child: Material(
          color: Colors.grey[200],
          child: InkWell(
            onTap: () async {

              widget.result = await FilePicker.platform.pickFiles(
                type: FileType.image,
              );


              setState(() {
                widget.file = widget.result!.files.first;
                AddProductsCubit.get(context).image = base64Encode(widget.file!.bytes!.toList());
                print(AddProductsCubit.get(context).image.substring(0,100));
              });
            },
            splashColor: mainColor,
            child: SizedBox(
              width: 110,
              height: 110,
              child: widget.result == null
                  ? const Icon(
                      Icons.add_photo_alternate_outlined,
                      size: 70,
                    )
                  : Image.memory(base64Decode(AddProductsCubit.get(context).image)),
            ),
          )),
    );
  }
}
