// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/view/widgets/add_item_section.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';
import 'package:pharmacy_project/modules/add_products/cubit/states.dart';


class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

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

    return BlocProvider(
      create: (context) => AddProductsCubit(),
      child: BlocConsumer<AddProductsCubit, AddProductsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AddProductsCubit cubit = AddProductsCubit.get(context);

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AddItemSection(
                  translator: translator,
                  nameContoller: nameContoller,
                  scientificNameContoller: scientificNameContoller,
                  categoryContoller: categoryContoller,
                  factoryContoller: factoryContoller,
                  expDateContoller: expDateContoller,
                  quantityContoller: quantityContoller,
                  priceContoller: priceContoller),
            ],
          );
        },
      ),
    );
  }
}


