import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:object_box_project/Getx_Pagination/empModel.dart';
import 'package:object_box_project/main.dart';

class Datasourcetable extends DataTableSource {
  final List<Employee> data;
  Datasourcetable({required this.data});

  @override
  DataRow? getRow(int index) {
    if (index >= data.length) return null;
    // TODO: implement getRow
    final employee = data[index];
    return DataRow.byIndex(
      index: index,

      // selected: true,
      cells: [
        DataCell(
          GestureDetector(
            onTap: () {
              // Get.to(MyHomePage(title: "home page"));
            },
            child: Text(employee.id.toString()),
          ),
        ),
        DataCell(Text(employee.name)),
        DataCell(Text(employee.role)),
      ],
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
