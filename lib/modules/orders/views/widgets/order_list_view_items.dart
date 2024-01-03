import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/orders/cubit/cubit.dart';
import 'package:pharmacy_project/modules/orders/models/OrderModel.dart';
import 'package:pharmacy_project/modules/orders/models/ProfilesDataModel.dart';
import 'package:pharmacy_project/modules/orders/views/widgets/order_details.dart';
import 'package:pharmacy_project/modules/orders/views/widgets/text_order_items.dart';
import 'package:pharmacy_project/shared/constants.dart';

class OrderListViewItem extends StatelessWidget {
  const OrderListViewItem({
    super.key,
    required this.index, required this.orders,
  });

  final int index;
  final List<OrderData> orders;

  @override
  Widget build(BuildContext context) {
    S translator = S.of(context);
    OrderCubit cubit = OrderCubit.get(context);
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.7,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.09,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: borderRadius,
        border: Border.all(
          color: cubit.chooseColor(
              orders[index].status!, orders[index].paymentStatus!),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: InkWell(
          onTap: () {
            Data da = cubit.profilesDataModel!.data!
                .firstWhere((map) => orders[index].pharmacyId == map.id);
            print(da.pharmacyName);
            print('omar');
            showDialog(
                context: context,
                builder: (context) =>
                    OrderDetails(
                      profileData: cubit.profilesDataModel!.data,
                      productsData: orders[index].products,
                      orders: orders,
                      index: index,
                    ));
          },
          child: Row(
            children: [
              TextOrderItem(data: '${index + 1} . '),
              const Spacer(),
              TextOrderItem(
                  data:
                  '${cubit.profilesDataModel!.data!
                      .firstWhere((map) => orders[index].pharmacyId == map.id).pharmacyName}',),
              TextOrderItem(
                  data: translator.orderStatus(
                      orders[index].status! - 1)),
              TextOrderItem(
                  data: translator.orderPaymentStatus(
                      orders[index].paymentStatus! - 1)),
              TextOrderItem(
                  data:
                  '${orders[index].priceAllproducts} ${translator.sp}'),
            ],
          ),
        ),
      ),
    );
  }
}
