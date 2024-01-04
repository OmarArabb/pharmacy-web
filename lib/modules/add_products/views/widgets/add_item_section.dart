// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/view/widgets/custom_material_button.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';
import 'package:pharmacy_project/modules/add_products/views/widgets/custom_alert_dialog.dart';
import 'package:pharmacy_project/shared/componentes/custom_text_form_field.dart';
import 'package:pharmacy_project/modules/add_products/views/widgets/add_image.dart';
import 'package:pharmacy_project/shared/functions/functions.dart';

class AddItemSection extends StatelessWidget {
  const AddItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S translator = S.of(context);
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
                  textInputAction: TextInputAction.next,
                  controller: cubit.nameContoller,
                  label: translator.enName,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  controller: cubit.scientificNameContoller,
                  label: translator.scientificNameItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  controller: cubit.priceContoller,
                  label: translator.priceItem,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  controller: cubit.quantityContoller,
                  label: translator.quantityItem,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  controller: cubit.arabicNameContoller,
                  label: translator.arName,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.none,
                  controller: cubit.expDateContoller,
                  label: '${translator.expDateItem} : yyyy-mm-dd',
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.none,
                  controller: cubit.factoryContoller,
                  label: translator.factoryItem,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const CustomAlertDialog(
                          isCategory: false,
                        );
                      },
                    );
                    print(cubit.factoryContoller.text);
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const CustomAlertDialog(
                          isCategory: true,
                        );
                      },
                    );
                    print(cubit.categoryContoller.text);
                  },
                  controller: cubit.categoryContoller,
                  label: translator.categoryItem,
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
                    if(! cubit.categoryName.contains(cubit.categoryContoller.text)){
                      showToast(translator, '${translator.categoryItem} ${translator.notFound}');
                    }else if(! cubit.factoryName.contains(cubit.factoryContoller.text)){
                      showToast(translator, '${translator.factoryItem} ${translator.notFound}');
                    } else if (cubit.nameContoller.text.isEmpty ||
                        cubit.arabicNameContoller.text.isEmpty ||
                        cubit.scientificNameContoller.text.isEmpty ||
                        cubit.categoryContoller.text.isEmpty ||
                        cubit.factoryContoller.text.isEmpty ||
                        cubit.expDateContoller.text.isEmpty ||
                        cubit.quantityContoller.text.isEmpty ||
                        cubit.priceContoller.text.isEmpty ||
                        cubit.image.isEmpty) {
                      showToast(translator,translator.emptyData);
                    } else {
                      cubit.addProductToMap();
                    }
                  },
                ),
                const SizedBox(
                  width: 12,
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



