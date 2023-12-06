// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/view/widgets/custom_material_button.dart';
import 'package:pharmacy_project/layout/view/widgets/custom_text_field.dart';
import 'package:pharmacy_project/modules/add_products/views/widgets/add_image.dart';

class AddItemSection extends StatelessWidget {
  AddItemSection({
    super.key,
    required this.nameContoller,
    required this.translator,
    required this.scientificNameContoller,
    required this.categoryContoller,
    required this.factoryContoller,
    required this.expDateContoller,
    required this.quantityContoller,
    required this.priceContoller,
  });

  final S translator;
  final TextEditingController nameContoller;
  final TextEditingController scientificNameContoller;
  final TextEditingController categoryContoller;
  final TextEditingController factoryContoller;
  final TextEditingController expDateContoller;
  final TextEditingController quantityContoller;
  final TextEditingController priceContoller;
  ImagePicker? imagePicker;
  XFile? xFile;

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AddImage(
          imagePicker: imagePicker,
          photo: xFile,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                  controller: nameContoller,
                  label: translator.nameItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                  controller: scientificNameContoller,
                  label: translator.scientificNameItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                  controller: categoryContoller,
                  label: translator.categoryItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                  controller: factoryContoller,
                  label: translator.factoryItem,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                  controller: expDateContoller,
                  label: translator.expDateItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                  controller: quantityContoller,
                  label: translator.quantityItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                  controller: priceContoller,
                  label: translator.priceItem,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CustomMaterialButton(
                  iconData: Icons.add,
                  text: translator.addItemBu,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomMaterialButton(
                  iconData: Icons.save,
                  text: translator.saveItems,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
