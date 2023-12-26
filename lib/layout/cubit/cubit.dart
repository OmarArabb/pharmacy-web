import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/layout/cubit/states.dart';
import 'package:pharmacy_project/modules/add_products/cubit/cubit.dart';
import 'package:pharmacy_project/modules/add_products/views/add_products_screen.dart';
import 'package:pharmacy_project/modules/orders/orders_screen.dart';
import 'package:pharmacy_project/modules/products/views/products_screen.dart';
import 'package:pharmacy_project/modules/settings/view/settings_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  var translator = S.current;

  int currentIndex = 2;

  List<Widget> screens = [
    const ProductsScreen(),
    const AddProductsScreen(),
    const OrdersScreen(),
    const SettingsScreen()
  ];

  void changeSelectedSideBarItem(int index,context) {
    currentIndex = index;
    if(index == 1){
      AddProductsCubit.get(context).getCategory();
      AddProductsCubit.get(context).getFactory();
    }
    emit(ChangeSideBarSelectedItem());
  }

}

