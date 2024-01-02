import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/view/widgets/custom_material_button.dart';
import 'package:pharmacy_project/main/cubit/cubit.dart';
import 'package:pharmacy_project/modules/settings/cubit/cubit.dart';
import 'package:pharmacy_project/modules/settings/cubit/states.dart';
import 'package:pharmacy_project/shared/componentes/custom_text_form_field.dart';
import 'package:pharmacy_project/shared/functions/functions.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController categoryEnNamecontroller = TextEditingController();
    TextEditingController categoryArNamecontroller = TextEditingController();
    TextEditingController factoryEnNamecontroller = TextEditingController();
    TextEditingController factoryArNamecontroller = TextEditingController();

    return BlocProvider(
      create: (context) => SettingCubit(),
      child: BlocConsumer<SettingCubit, SettingsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          SettingCubit cubit = SettingCubit.get(context);
          S translator = S.of(context);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${translator.changeLang} : ',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  CustomMaterialButton(
                    onPressed: () {
                      MainCubit.get(context).changeLanguage();
                    },
                    text: translator.change,
                    iconData: Icons.translate,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(color: secondaryColor),
              const SizedBox(
                height: 15,
              ),
              Text(
                translator.createNewCategory,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CustomTextFormField(
                    controller: categoryEnNamecontroller,
                    label: translator.enName,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomTextFormField(
                    controller: categoryArNamecontroller,
                    label: translator.arName,
                    textInputAction: TextInputAction.next,
                  ),
                  // const SizedBox(
                  //   width: 20,
                  // ),
                  const Spacer(),
                  CustomMaterialButton(
                    onPressed: () {
                      if (categoryEnNamecontroller.text.isEmpty ||
                          categoryArNamecontroller.text.isEmpty) {
                        showToast(translator);
                      } else {
                        cubit.newItem.addAll({
                          "Category_name": categoryEnNamecontroller.text,
                          "Arabic_Category_name": categoryArNamecontroller.text
                        });
                        cubit.createCategory();
                        categoryEnNamecontroller.clear();
                        categoryArNamecontroller.clear();
                      }
                    },
                    text: translator.create,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(color: secondaryColor),
              const SizedBox(
                height: 15,
              ),
              Text(
                translator.createNewFactory,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CustomTextFormField(
                    controller: factoryEnNamecontroller,
                    label: translator.enName,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomTextFormField(
                    controller: factoryArNamecontroller,
                    label: translator.arName,
                    textInputAction: TextInputAction.next,
                  ),
                  const Spacer(),
                  CustomMaterialButton(
                    onPressed: () {
                      if (factoryEnNamecontroller.text.isEmpty ||
                          factoryArNamecontroller.text.isEmpty) {
                        showToast(translator);
                      } else {
                        cubit.newItem.addAll({
                          "made_by_name": factoryEnNamecontroller.text,
                          "made_by_Arabic_name": factoryArNamecontroller.text
                        });
                        cubit.createFactory();
                        factoryEnNamecontroller.clear();
                        factoryArNamecontroller.clear();
                      }
                    },
                    text: translator.create,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
