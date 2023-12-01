import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).productScreenTitle,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: DataTable(

          columns: const <DataColumn>[DataColumn(label: Text('Image'))],
          rows: List.generate(
            5,
            (index) => DataRow(cells: <DataCell>[
              DataCell(SizedBox(
                height: 45,
                child: Image.network(
                    'https://th.bing.com/th/id/R.d744440971931f937269e060e720f5a7?rik=UFgncY2ZxSYXKA&pid=ImgRaw&r=0'),
              ))
            ]),
          ),
        ));
  }
}
