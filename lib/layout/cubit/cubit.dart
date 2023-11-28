import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/layout/cubit/states.dart';
import 'package:pharmacy_project/modules/add_products/add_products_screen.dart';
import 'package:pharmacy_project/modules/orders/orders_screen.dart';
import 'package:pharmacy_project/modules/products/products_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<NavigationRailDestination> navigationRailItem = [
    const NavigationRailDestination(
      icon: Icon(Icons.local_pharmacy_outlined),
      label: Text('Product'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.add_box_outlined),
      label: Text('Add Products'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.feed_outlined),
      label: Text('Orders'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.bar_chart),
      label: Text('Report'),
    ),
  ];

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
