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
        if(state is GetProductsSuccessState){
          if(cubit.productsModel!.message == 'not founde'){
            return const Column(
              children: [
                SizedBox(
                  height: 24
                  ,
                ),
                Icon(Icons.error,size: 100,),
                Text('Not Found Any Data',style: TextStyle(
                  fontSize: 24
                ),)
              ],
            );
          }
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ProductsTable(dataModel: cubit.productsModel!.data!),
              )
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
