import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:object_box_project/Getx_Pagination/DataSourceTable.dart';
import 'package:object_box_project/Getx_Pagination/Empcontroller.dart';

class EmployeeTableScreen extends StatelessWidget {
  final Empcontroller controller = Get.put(Empcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employees")),
      body: Obx(() {
        if (controller.employee.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }

        return SingleChildScrollView(
          child: PaginatedDataTable(
            
           
            header: Text("Employee List"),
            rowsPerPage: 10,
            columns: const [
              DataColumn(label: Text("ID")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Role")),
            ],
            source: Datasourcetable(data: controller.employee),
          ),
        );
      }),
    );
  }
}
