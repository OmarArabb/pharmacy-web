import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_project/modules/orders/cubit/cubit.dart';
import 'package:pharmacy_project/modules/orders/cubit/state.dart';
import 'package:pharmacy_project/modules/orders/views/widgets/order_items.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderCubit, OrderStates>(
      listener: (context, state) {},
      builder: (context, state) {
        OrderCubit cubit = OrderCubit.get(context);
        if(cubit.allOrder.isEmpty){
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            OrderItems(orderMoodel: cubit.allOrder),
          ],
        );
      },
    );
  }
}

