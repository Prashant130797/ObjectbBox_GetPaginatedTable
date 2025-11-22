import 'package:object_box_project/ObjectBoxModel/UserModel.dart';
import 'package:object_box_project/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';

class objectboxInitialize {
  late final Store store;
  late final Box<Usermodel> userBox;
  objectboxInitialize._init(this.store) {
    userBox = Box<Usermodel>(store);
  }

  static Future<objectboxInitialize> init() async {
    // final dir = await getApplicationDocumentsDirectory();
    final Store store = await openStore();
    return objectboxInitialize._init(store);
  }
}
