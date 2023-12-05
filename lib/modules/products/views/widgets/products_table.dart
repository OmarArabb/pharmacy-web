import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/products/views/widgets/label_text.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class ProductsTable extends StatelessWidget {
  const ProductsTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var translator = S.of(context);

    return DataTable(
      dataRowMaxHeight: 50,
      dataRowMinHeight: 40,
      headingRowHeight: 60,
      clipBehavior: Clip.antiAlias,
      border: TableBorder.all(
          borderRadius: BorderRadius.circular(18), color: mainColor),
      headingRowColor: MaterialStateColor.resolveWith((states) {
        return mainColor;
      }),
      headingTextStyle: Theme.of(context).textTheme.titleLarge,
      columns: <DataColumn>[
        DataColumn(label: LabelText(data: translator.numberItem)),
        DataColumn(label: LabelText(data: translator.imageItem)),
        DataColumn(label: LabelText(data: translator.nameItem)),
        DataColumn(label: LabelText(data: translator.scientificNameItem)),
        DataColumn(label: LabelText(data: translator.categoryItem)),
        DataColumn(label: LabelText(data: translator.factoryItem)),
        DataColumn(label: LabelText(data: translator.expDateItem)),
        DataColumn(label: LabelText(data: translator.quantityItem)),
        DataColumn(label: LabelText(data: translator.priceItem)),
      ],
      rows: List.generate(
        15,
        (index) => DataRow(cells: <DataCell>[
          DataCell(Text('${index + 1}')),
          DataCell(SizedBox(
            height: 60,
            width: 60,
            child: Image.network(
                'https://th.bing.com/th/id/OIP.r_IMawYnBdpcaz8JIcYtqAHaHa?w=800&h=800&rs=1&pid=ImgDetMain'),
          )),
          const DataCell(Text('Name')),
          const DataCell(Text('Scientific name')),
          const DataCell(Text('Category')),
          const DataCell(Text('Factory')),
          const DataCell(Text('Exp date')),
          const DataCell(Text('Quantity')),
          const DataCell(Text('Price')),
        ]),
      ),
    );
  }
}
