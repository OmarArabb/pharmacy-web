import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/cubit/states.dart';
import 'package:pharmacy_project/modules/add_products/views/add_products_screen.dart';
import 'package:pharmacy_project/modules/orders/orders_screen.dart';
import 'package:pharmacy_project/modules/products/views/products_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  var translator = S.current;

  int currentIndex = 0;

  List<Widget> screens = [
    const ProductsScreen(),
    const AddProductsScreen(),
    const OrdersScreen(),
    const Placeholder()
  ];

  void changeSelectedSideBarItem(int index) {
    currentIndex = index;

    emit(ChangeSideBarSelectedItem());
  }

}

