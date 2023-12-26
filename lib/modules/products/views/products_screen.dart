import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/products/cubit/cubit.dart';
import 'package:pharmacy_project/modules/products/cubit/states.dart';
import 'package:pharmacy_project/modules/products/views/widgets/products_table.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetProductsCubit, GetProductsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        GetProductsCubit cubit = GetProductsCubit.get(context);

        if(cubit.productsModel == null){
          return const Center(child: CircularProgressIndicator());
        }
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ProductsTable(dataModel: cubit.productsModel!.data!),
            )
          ],
        );
      },
    );
  }
}
