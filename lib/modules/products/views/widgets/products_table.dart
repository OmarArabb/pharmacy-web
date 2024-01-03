import 'package:flutter/material.dart';
import 'package:pharmacy_project/generated/l10n.dart';
import 'package:pharmacy_project/modules/products/models/ProductsModel.dart';
import 'package:pharmacy_project/modules/products/views/widgets/label_text.dart';
import 'package:pharmacy_project/shared/constants.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

class ProductsTable extends StatelessWidget {
  const ProductsTable({
    super.key,
    required this.dataModel,
  });

  final List<Data> dataModel;

  @override
  Widget build(BuildContext context) {
    var translator = S.of(context);

    DateTime dateTime = DateTime.now();
    return DataTable(
      dataRowMaxHeight: 50,
      dataRowMinHeight: 40,
      headingRowHeight: 60,
      clipBehavior: Clip.antiAlias,
      border: TableBorder.all(borderRadius: borderRadius, color: mainColor),
      columnSpacing: 24,
      headingRowColor: MaterialStateColor.resolveWith((states) {
        return mainColor;
      }),
      headingTextStyle: Theme.of(context).textTheme.titleMedium,
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
        dataModel.length,
        (index) => DataRow(cells: <DataCell>[
          DataCell(Text('${index + 1}')),
          DataCell(SizedBox(
              height: 50,
              width: 50,
              child: Image.network(
                  'http://127.0.0.1:8000${dataModel[index].image}'))),
          DataCell(isArabic
              ? Text(dataModel[index].arabicName!)
              : Text(dataModel[index].marketingName!)),
          DataCell(Text(dataModel[index].scientificName!)),
          DataCell(isArabic
              ? Text(dataModel[index].arabicCategoryName!)
              : Text(dataModel[index].categoryName!)),
          DataCell(isArabic
              ? Text(dataModel[index].madeByArabicName!)
              : Text(dataModel[index].madeByName!)),
          DataCell(
            Text(
              dataModel[index].expDate!,
              style: TextStyle(
                  color: dateTime
                          .isAfter(DateTime.parse(dataModel[index].expDate!))
                      ? Colors.red
                      : Colors.black),
            ),
          ),
          DataCell(Text(dataModel[index].quantity.toString())),
          DataCell(Text(dataModel[index].price.toString())),
        ]),
      ),
    );
  }
}
