import 'package:flutter/material.dart';
import 'package:pharmacy_project/shared/constants.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [OrderItem()],
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: borderRadius,
          border: Border.all(color: thirdColor, width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          onTap: (){

          },
          child: const Row(
            children: [
              Text('1 . ',style: TextStyle(
                fontSize: 18
              ),),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('received'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('unpaid'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('5000 \$'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Color {
  inPreparation,
  PREPARING,


}
