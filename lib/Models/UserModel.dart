import 'package:objectbox/objectbox.dart';

@Entity()
class Usermodel {
  int id;
  String name;
  String age;

  Usermodel({this.id = 0, required this.age, required this.name});
}


