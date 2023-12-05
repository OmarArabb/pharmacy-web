import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/cubit/states.dart';
import 'package:pharmacy_project/modules/add_products/add_products_screen.dart';
import 'package:pharmacy_project/modules/orders/orders_screen.dart';
import 'package:pharmacy_project/modules/products/views/products_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  var translator = S.current;

  int currentIndex = 0;

  // List<NavigationRailDestination> navigationRailItem = [
  //   const NavigationRailDestination(
  //     icon: Icon(Icons.local_pharmacy_outlined),
  //     selectedIcon: Icon(Icons.local_pharmacy),
  //     label: Text('products'),
  //   ),
  //   const NavigationRailDestination(
  //     icon: Icon(Icons.add_box_outlined),
  //     selectedIcon: Icon(Icons.add_box),
  //     label: Text('Add Items'),
  //   ),
  //   const NavigationRailDestination(
  //     icon: Icon(Icons.feed_outlined),
  //     selectedIcon: Icon(Icons.feed),
  //     label: Text('Orders'),
  //   ),
  //   const NavigationRailDestination(
  //     icon: Icon(Icons.insert_chart_outlined_rounded),
  //     selectedIcon: Icon(Icons.insert_chart_rounded),
  //     label: Text('Report'),
  //   ),
  // ];

  List<Widget> screens = [
    const ProductsScreen(),
    const AddProductsScreen(),
    const OrdersScreen(),
    const AddProductsScreen()
  ];

  void changeSelectedSideBarItem(int index) {
    currentIndex = index;

    emit(ChangeSideBarSelectedItem());
  }

}
