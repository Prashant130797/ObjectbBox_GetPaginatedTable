
import 'package:object_box_project/objectbox.g.dart';
import 'package:object_box_project/objectbox_entities.dart';


class objectboxInitialize {
  late final Store store;
  late final Box<Usermodel> userBox;
  late final Box<Employee> empBox;

  objectboxInitialize._init(this.store) {
    userBox = Box<Usermodel>(store);
    empBox = Box<Employee>(store);
  }

  static Future<objectboxInitialize> init() async {
    // final dir = await getApplicationDocumentsDirectory();
    final Store store = await openStore();
    return objectboxInitialize._init(store);
  }
}
