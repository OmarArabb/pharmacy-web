// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/add_products/views/widgets/add_item_section.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';
import 'package:pharmacy_project/modules/add_products/cubit/states.dart';
import 'package:pharmacy_project/modules/add_products/views/widgets/added_product_table.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AddProductsCubit, AddProductsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AddProductsCubit cubit = AddProductsCubit.get(context);

        return Column(
          children: [
            const AddItemSection(),
            const SizedBox(
              height: 15,
            ),
            if (state is AddProductState)
              Expanded(
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  slivers: [
                    SliverToBoxAdapter(
                      child: ProductTable(map : cubit.products,),
                    )
                  ],
                ),
              )
          ],
        );
      },
    );
  }
}
