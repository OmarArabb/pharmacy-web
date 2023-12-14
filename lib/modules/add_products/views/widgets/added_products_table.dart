import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/products/views/widgets/label_text.dart';
import 'package:pharmacy_project/shared/constants.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class AddedProductsTable extends StatelessWidget {
  const AddedProductsTable({
    super.key,
    required this.map,
  });

  final List<Map<String, dynamic>> map;

  @override
  Widget build(BuildContext context) {
    var translator = S.of(context);

    return DataTable(
      dataRowMaxHeight: 50,
      dataRowMinHeight: 40,
      headingRowHeight: 60,
      clipBehavior: Clip.antiAlias,
      border: TableBorder.all(borderRadius: borderRadius, color: mainColor),
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
        map.length,
        (index) => DataRow(cells: <DataCell>[
          DataCell(Text('${index + 1}')),
          DataCell(SizedBox(
            height: 60,
            width: 60,
            child: Image.memory(base64Decode(map[index]['image'])),
          )),
          DataCell(Text(map[index]['marketing_name'])),
          DataCell(Text(map[index]['scientific_name'])),
          DataCell(Text(map[index]['category'])),
          DataCell(Text(map[index]['factory'])),
          DataCell(Text(map[index]['exp_date'])),
          DataCell(Text(map[index]['quantity'])),
          DataCell(Text(map[index]['price'])),
        ]),
      ),
    );
  }
}
