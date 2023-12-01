import 'package:flutter/material.dart';
import 'package:pharmacy_project/constants.dart';
import 'package:pharmacy_project/modules/products/views/widgets/label_text.dart';

class ProductsTable extends StatelessWidget {
  const ProductsTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      dataRowMaxHeight: 70,
      dataRowMinHeight: 60,
      headingRowHeight: 70,
      clipBehavior: Clip.antiAlias,
      border: TableBorder.all(
          borderRadius: BorderRadius.circular(18), color: secondaryColor),
      headingRowColor: MaterialStateColor.resolveWith((states) {
        return mainColor;
      }),
      headingTextStyle: Theme.of(context).textTheme.titleLarge,
      columns: const <DataColumn>[
        DataColumn(label: LabelText(data: 'Image')),
        DataColumn(label: LabelText(data:'Name')),
        DataColumn(label: LabelText(data:'Scientific name')),
        DataColumn(label: LabelText(data:'Factory')),
        DataColumn(label: LabelText(data:'Exp date')),
        DataColumn(label: LabelText(data:'Quantity')),
        DataColumn(label: LabelText(data:'Price')),
      ],
      rows: List.generate(
        10,
            (index) => DataRow(cells: <DataCell>[
          DataCell(SizedBox(
            height: 60,
            width: 60,
            child: Image.network(
                'https://th.bing.com/th/id/OIP.r_IMawYnBdpcaz8JIcYtqAHaHa?w=800&h=800&rs=1&pid=ImgDetMain'),
          )),
          const DataCell(Text('Name')),
          const DataCell(Text('Scientific name')),
          const DataCell(Text('Factory')),
          const DataCell(Text('Exp date')),
          const DataCell(Text('Quantity')),
          const DataCell(Text('Price')),
        ]),
      ),
    );
  }
}

