
import 'package:objectbox/objectbox.dart';

@Entity()
class Employee {
  int id;
  String empName;
  int empAge;
  
  Employee({this.id = 0, required this.empAge, required this.empName});
}
