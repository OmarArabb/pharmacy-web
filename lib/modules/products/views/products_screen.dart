import 'package:flutter/material.dart';
import 'package:pharmacy_project/modules/products/views/widgets/products_table.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: ProductsTable(),
        )
      ],
    );
  }
}


