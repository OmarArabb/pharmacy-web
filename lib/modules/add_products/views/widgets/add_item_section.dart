// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/view/widgets/custom_material_button.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';
import 'package:pharmacy_project/shared/componentes/custom_text_form_field.dart';
import 'package:pharmacy_project/modules/add_products/views/widgets/add_image.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class AddItemSection extends StatelessWidget {
  AddItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S translator = S.of(context);
    TextEditingController nameContoller = TextEditingController();
    TextEditingController scientificNameContoller = TextEditingController();
    TextEditingController categoryContoller = TextEditingController();
    TextEditingController factoryContoller = TextEditingController();
    TextEditingController expDateContoller = TextEditingController();
    TextEditingController quantityContoller = TextEditingController();
    TextEditingController priceContoller = TextEditingController();
    AddProductsCubit cubit = AddProductsCubit.get(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AddImage(),
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
                CustomTextFormField(
                  controller: nameContoller,
                  label: translator.nameItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  controller: scientificNameContoller,
                  label: translator.scientificNameItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  controller: categoryContoller,
                  label: translator.categoryItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
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
                CustomTextFormField(
                  controller: expDateContoller,
                  label: translator.expDateItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  controller: quantityContoller,
                  label: translator.quantityItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
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
                  onPressed: () async {
                    if (nameContoller.text.isEmpty ||
                        scientificNameContoller.text.isEmpty ||
                        categoryContoller.text.isEmpty ||
                        factoryContoller.text.isEmpty ||
                        expDateContoller.text.isEmpty ||
                        quantityContoller.text.isEmpty ||
                        priceContoller.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: translator.emptyData,
                          timeInSecForIosWeb: 2,
                          webBgColor: "linear-gradient(to right, #1E334F, #3B639C)",
                          webPosition: translator.toastPosition,
                          textColor: secondaryColor);
                    } else {
                      cubit.addProduct({
                        "image": cubit.image,
                        "marketing_name": nameContoller.text,
                        "scientific_name": scientificNameContoller.text,
                        "category": categoryContoller.text,
                        "factory": factoryContoller.text,
                        "exp_date": expDateContoller.text,
                        "quantity": quantityContoller.text,
                        "price": priceContoller.text
                      }).then((value) {
                        nameContoller.clear();
                        scientificNameContoller.clear();
                        categoryContoller.clear();
                        factoryContoller.clear();
                        expDateContoller.clear();
                        quantityContoller.clear();
                        priceContoller.clear();
                      });
                    }
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomMaterialButton(
                  iconData: Icons.save,
                  text: translator.saveItems,
                  onPressed: () {
                    cubit.saveProducts();
                  },
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
