import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/orders/cubit/state.dart';
import 'package:pharmacy_project/modules/orders/models/OrderModel.dart';
import 'package:pharmacy_project/modules/orders/models/ProfilesDataModel.dart';
import 'package:pharmacy_project/shared/network/dio_helper.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class OrderCubit extends Cubit<OrderStates> {
  OrderCubit() : super(GetOrderLoadingState());

  static OrderCubit get(context) => BlocProvider.of(context);

  int? statusIndex;

  ProfilesDataModel? profilesDataModel;
  OrderMoodel? orderMoodel;

  List<OrderData> sentOrders = [];
  List<OrderData> inPreparationOrders = [];
  List<OrderData> deliveredOrders = [];
  List<OrderData> allOrder = [];

  Color chooseColor(int state, int payment) {
    switch (state) {
      case 1 :
        switch(payment){
          case 2 :
            return secondaryColor;
          case 1 :
            return thirdColor;
        }
      case 2 :
        return thirdColor;
      case 3 :
        switch(payment){
          case 2 :
            return thirdColor;
          case 1 :
            return mainColor;
        }
    }
    return secondaryColor;
  }



  Future<void> getProfileData() async {
    emit(GetProfileLoadingState());
    DioHelper.getData(url: 'pharmaciesInfo').then((value) {
      emit(GetProfileSuccessState());
      profilesDataModel = ProfilesDataModel.fromJson(value.data);
    }).catchError((error) {
      emit(GetProfileErrorState());
      print(error.toString());
    });
  }

  Future<void> getOrdersData() async {
    emit(GetOrderLoadingState());
    orderMoodel = null;
    allOrder.clear();
    sentOrders.clear();
    deliveredOrders.clear();
    inPreparationOrders.clear();
    print(allOrder);

    await Future.delayed(const Duration(seconds: 1));
    DioHelper.getData(url: 'getAllOrdersTowarehouse/1').then((value) async{
      orderMoodel = OrderMoodel.fromJson(value.data);
      for (var element in orderMoodel!.data!) {
        if (element.status == 1) {
          sentOrders.add(element);
        } else if (element.status == 2) {
          inPreparationOrders.add(element);
        } else {
          deliveredOrders.add(element);
        }
      }
      allOrder.addAll(sentOrders);
      allOrder.addAll(inPreparationOrders);
      allOrder.addAll(deliveredOrders);
      print(value.data);
      emit(GetOrderSuccessState());
    }).catchError((error) {
      emit(GetOrderSErrorState());
      print(error.toString());
    });
  }

  Future<void> updateOrderStatus({
    required int orderId,
    required int orderStatus,
  }) async {
    emit(UpdateStatusLoadingState());
    DioHelper.putData(
      url: 'update_order_status',
      query: {
        "order_id": orderId,
        "order_status": orderStatus,
      },
    ).then((value) {
      print(' orderId $orderId');
      print(orderStatus);
      emit(UpdateStatusSuccessState());
    }).catchError((error) {
      emit(UpdateStatusErrorState());
      print(error.toString());
    });
  }

  Future<void> updatePaymentOrderStatus({
    required int orderId,
    required int orderStatus,
  }) async {
    emit(UpdateStatusLoadingState());
    DioHelper.putData(
      url: 'update_order_status_payment',
      query: {
        "order_id": orderId,
        "order_payment_status": orderStatus,
      },
    ).then((value) {
      print(' orderId $orderId');
      print(orderStatus);
      emit(UpdateStatusSuccessState());
    }).catchError((error) {
      emit(UpdateStatusErrorState());
      print(error.toString());
    });
  }
}
