import 'package:flutter/material.dart';
import 'package:object_box_project/ObjectBoxModel/DataMainmodel.dart';
import 'package:object_box_project/Models/UserModel.dart';
import 'package:object_box_project/main.dart';
import 'package:object_box_project/objectbox.g.dart';

class Usermodeloperation {
  Usermodeloperation._instance();
  static final Usermodeloperation mainInstance = Usermodeloperation._instance();

  int createUser(Usermodel usr) {
    return objectBox.userBox.put(usr);
  }

  List<Usermodel> getAlluser() {
    return objectBox.userBox.getAll();
  }

  Usermodel updateUser(Usermodel getUsr, String UpdatedName) {
    getUsr.name = UpdatedName;
    objectBox.userBox.put(getUsr);
    print("the finded user is ${getUsr.name}");
    return getUsr;
  }

  Usermodel? getSingleUserByName(String name) {
    var query =
        objectBox.userBox
            .query(Usermodel_.name.equals(name, caseSensitive: false))
            .build();
    final user = query.findFirst();
    query.close();
    return user;
  }

  deleteUser(BuildContext context, String fetchname) {
    var query =
        objectBox.userBox.query(Usermodel_.name.equals(fetchname)).build();
    var findedUser = query.findFirst();
    print("the finded user is $findedUser");
    if (findedUser != null) {
      objectBox.userBox.remove(findedUser.id);
    } else {
      print("the finded user is ==>>$findedUser");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("User Not Found")));
    }
    query.close();
  }
}
