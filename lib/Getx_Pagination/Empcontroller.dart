import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:object_box_project/Getx_Pagination/empModel.dart';

class Empcontroller extends GetxController {
  var employee = <Employee>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getEmployes();
    super.onInit();
  }

  void getEmployes() {
    employee.value = List.generate(100, (index) {
      return Employee(
        id: index + 1,
        name: "Employee $index",
        role: index % 2 == 0 ? "Developer" : "Designer",
      );
    });
  }
}
