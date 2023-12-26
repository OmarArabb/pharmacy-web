import 'package:flutter/material.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';

class CustomAlertDialogContent extends StatelessWidget {
  const CustomAlertDialogContent({
    super.key,
    required this.isCategory,
  });

  final bool isCategory;

  @override
  Widget build(BuildContext context) {
    AddProductsCubit cubit = AddProductsCubit.get(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            isCategory
                ? cubit.selectCategoryId(index)
                : cubit.selectFactoryId(index);
            isCategory
                ? cubit.categoryContoller.text = cubit.categoryName[index]
                : cubit.factoryContoller.text = cubit.factoryName[index];
            Navigator.pop(context);
          },
          title: Text(isCategory
              ? cubit.categoryName[index]
              : cubit.factoryName[index]),
        ),
        itemCount:
            isCategory ? cubit.categoryName.length : cubit.factoryName.length,
      ),
    );
  }
}
