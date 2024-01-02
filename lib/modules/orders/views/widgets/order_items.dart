import 'package:flutter/material.dart';
import 'package:pharmacy_project/modules/orders/models/OrderModel.dart';
import 'package:pharmacy_project/modules/orders/views/widgets/order_list_view_items.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({
    super.key, required this.orderMoodel,
  });

  final List<OrderData> orderMoodel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: ListView.separated(
          itemBuilder: (context, index) => OrderListViewItem(index: index,orders: orderMoodel),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: orderMoodel.length,
        ),
      ),
    );
  }
}
