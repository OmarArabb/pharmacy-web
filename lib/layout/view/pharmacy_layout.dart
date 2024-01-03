import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/cubit/cubit.dart';
import 'package:pharmacy_project/layout/cubit/states.dart';
import 'package:pharmacy_project/modules/products/cubit/cubit.dart';
import 'package:pharmacy_project/shared/componentes/custom_text_form_field.dart';
import 'package:pharmacy_project/layout/view/widgets/side_bar.dart';
import 'package:pharmacy_project/shared/constants.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class PharmacyLayout extends StatelessWidget {
  const PharmacyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var translator = S.of(context);
    var searchController = TextEditingController();

    List<NavigationRailDestination> navigationRailItem = [
      NavigationRailDestination(
        icon: const Icon(Icons.local_pharmacy_outlined),
        selectedIcon: const Icon(Icons.local_pharmacy),
        label: Text(translator.products),
      ),
      NavigationRailDestination(
        icon: const Icon(Icons.add_box_outlined),
        selectedIcon: const Icon(Icons.add_box),
        label: Text(translator.addItems),
      ),
      NavigationRailDestination(
        icon: const Icon(Icons.feed_outlined),
        selectedIcon: const Icon(Icons.feed),
        label: Text(translator.orders),
      ),
      NavigationRailDestination(
        icon: const Icon(Icons.settings),
        selectedIcon: const Icon(Icons.settings),
        label: Text(translator.settings),
      ),
    ];

    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);
            GetProductsCubit getProductsCubit = GetProductsCubit.get(context);
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    SideBar(
                        cubit: cubit, navigationRailItem: navigationRailItem),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: mainColor, borderRadius: borderRadius),
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text('M e d i x i f y',
                                      style: TextStyle(
                                        fontFamily: 'Courgette',
                                        color: secondaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      )),
                                  const Spacer(),
                                  CustomTextFormField(
                                    textInputAction: TextInputAction.none,
                                    controller: searchController,
                                    onSubmit: (String value) {
                                      getProductsCubit.name = value;
                                      getProductsCubit.searchProducts();
                                      searchController.clear();
                                      if (value.isEmpty) {
                                        GetProductsCubit.get(context)
                                            .getProducts();
                                      }
                                    },
                                    label: translator.search,
                                    icon: Icons.search_outlined,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: (context) => List.generate(
                                      getProductsCubit.categoryName.length,
                                      (index) => PopupMenuItem(
                                        value: getProductsCubit
                                            .categoryName[index],
                                        child: Text(getProductsCubit
                                            .categoryName[index]),
                                      ),
                                    ),
                                    icon: const Icon(Icons.filter_alt_outlined),
                                    onSelected: (value) {
                                      if (value == translator.All) {
                                        getProductsCubit.getProducts();
                                      } else {
                                        getProductsCubit.categoryData = value;
                                        getProductsCubit.searchProducts();
                                      }
                                      print(value);
                                    },
                                    // onOpened: (){
                                    //   getProductsCubit.getCategory(context);
                                    // },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(child: cubit.screens[cubit.currentIndex])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
