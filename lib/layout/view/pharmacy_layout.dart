import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/cubit/cubit.dart';
import 'package:pharmacy_project/layout/cubit/states.dart';
import 'package:pharmacy_project/shared/componentes/custom_text_form_field.dart';
import 'package:pharmacy_project/layout/view/widgets/side_bar.dart';
import 'package:pharmacy_project/main/cubit/cubit.dart';
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
        icon: const Icon(Icons.insert_chart_outlined_rounded),
        selectedIcon: const Icon(Icons.insert_chart_rounded),
        label: Text(translator.report),
      ),
    ];

    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
              // appBar: AppBar(),
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
                              color: mainColor,
                              borderRadius: borderRadius
                            ),
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'M e d i x i f y',
                                    style: TextStyle(
                                      fontFamily: 'Courgette',
                                      color: secondaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    )
                                  ),
                                  const Spacer(),
                                  CustomTextFormField(
                                    controller: searchController,
                                    onChange: (value) {},
                                    label: translator.search,
                                    icon: Icons.search_outlined,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        MainCubit.get(context).changeLanguage();
                                      },
                                      icon: const Icon(Icons.translate_outlined))
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
                    // Expanded(
                    //   child: cubit.screens[cubit.currentIndex],
                    // ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
