import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/layout/view/widgets/custom_material_button.dart';
import 'package:pharmacy_project/modules/settings/cubit/cubit.dart';
import 'package:pharmacy_project/modules/settings/cubit/states.dart';
import 'package:pharmacy_project/shared/componentes/custom_text_form_field.dart';
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
      child: BlocConsumer<SettingCubit,SettingsStates>(
        listener: (context, state) {},
        builder: (context, state) {

          SettingCubit cubit = SettingCubit.get(context);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Change Language'),
              const SizedBox(
                height: 15,
              ),
              Divider(color: secondaryColor),
              const SizedBox(
                height: 15,
              ),
              const Text('Create New Category',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CustomTextFormField(
                    controller: categoryEnNamecontroller,
                    label: 'English Name',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomTextFormField(
                    controller: categoryArNamecontroller,
                    label: 'Arabic Name',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomMaterialButton(
                    onPressed: () {
                      cubit.newItem.addAll({
                        "Category_name" : categoryEnNamecontroller.text,
                        "Arabic_Category_name": categoryArNamecontroller.text
                      });
                      cubit.createCategory();
                      categoryEnNamecontroller.clear();
                      categoryArNamecontroller.clear();
                    },
                    text: 'Create',
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
              const Text('Create New Factory',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CustomTextFormField(
                    controller: factoryEnNamecontroller,
                    label: 'English Name',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomTextFormField(
                    controller: factoryArNamecontroller,
                    label: 'Arabic Name',
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomMaterialButton(
                    onPressed: () {
                      cubit.newItem.addAll({
                        "made_by_name" : factoryEnNamecontroller.text,
                        "made_by_Arabic_name": factoryArNamecontroller.text
                      });
                      cubit.createFactory();
                      factoryEnNamecontroller.clear();
                      factoryArNamecontroller.clear();
                    },
                    text: 'Create',
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
