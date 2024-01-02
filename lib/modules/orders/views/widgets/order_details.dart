import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/orders/cubit/cubit.dart';
import 'package:pharmacy_project/modules/orders/models/OrderModel.dart';
import 'package:pharmacy_project/modules/orders/models/ProfilesDataModel.dart';
import 'package:pharmacy_project/modules/orders/views/widgets/user_data_text.dart';
import 'package:pharmacy_project/shared/constants.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails(
      {super.key,
      required this.profileData,
      required this.index,
      required this.productsData, required this.orders});

  final List<Data>? profileData;
  final List<Products>? productsData;
  final List<OrderData> orders;
  final int index;

  @override
  Widget build(BuildContext context) {
    OrderCubit cubit = OrderCubit.get(context);
    S translator = S.of(context);
    return AlertDialog(
      title: Text('Order ID : ${cubit.allOrder[index].orderId}'),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserDataText(
                        text:
                            'Pharmacy Name : ${profileData![cubit.allOrder[index].pharmacyId! - 1].fullName}'),
                    UserDataText(
                        text:
                            'Pharmacist Name : ${profileData![cubit.allOrder[index].pharmacyId! - 1].pharmacyName}'),
                    UserDataText(
                        text:
                            'Phone Number : ${profileData![cubit.allOrder[index].pharmacyId! - 1].phoneNumber}'),
                  ],
                ),
                const Expanded(child: SizedBox()),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserDataText(
                        text:
                            'Email Address : ${profileData![cubit.allOrder[index].pharmacyId! - 1].emailAddress}'),
                    UserDataText(
                        text:
                            'Address : ${profileData![cubit.allOrder[index].pharmacyId! - 1].pharmacyAddress}'),
                    UserDataText(
                        text:
                            'City : ${profileData![cubit.allOrder[index].pharmacyId! - 1].cityName}'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: DataTable(
                      headingTextStyle: const TextStyle(
                        fontSize: 18,
                      ),
                      columns: const [
                        DataColumn(label: Text('Image')),
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Price')),
                        DataColumn(label: Text('Total')),
                      ],
                      rows: List.generate(
                        productsData!.length,
                        (index) => DataRow(
                          cells: [
                            DataCell(
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.network(
                                  'http://127.0.0.1:8000${productsData![index].image}',
                                ),
                              ),
                            ),
                            DataCell(Text(
                                '${isArabic ? productsData![index].arabicName : productsData![index].marketingName}')),
                            DataCell(Text('${productsData![index].price}')),
                            DataCell(Text(
                                '${productsData![index].priceAllproducts}')),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                cubit
                    .updatePaymentOrderStatus(
                  orderId: orders[index].orderId!,
                  orderStatus: (orders[index].paymentStatus! - 1),
                ).then((value) {
                  cubit.getOrdersData();
                  // print('${orders[index].status}sdfg');
                });
                Navigator.pop(context);
              },
              child: Text(
                  'Update Payment Status : ${translator.orderPaymentStatus(orders[index].paymentStatus! - 1)}'),
            ),
            TextButton(
              onPressed: () {
                cubit
                    .updateOrderStatus(
                  orderId: orders[index].orderId!,
                  orderStatus: (orders[index].status! + 1),
                ).then((value) {
                  cubit.getOrdersData();
                  print('${orders[index].status}sdfg');
                });


                Navigator.pop(context);
              },
              child: Text(
                'Update Status Order : ${translator.orderStatus(orders[index].status! - 1)}',
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('close'),
            ),
          ],
        ),
      ],
    );
  }
}

//
// List<Map<String, dynamic>> list = [
//   {'name': 'John', 'age': 25},
//   {'name': 'Jane', 'age': 30},
//   {'name': 'Bob', 'age': 35},
// ];
//
// String name = list.firstWhere((map) => map['age'] == 30)['name'];
