import 'package:modelhandling/model/studentmodel.dart';

class StudentService {
  Future<List<Student>> fetchStudents() async {
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'id': '2', 'name': 'Juan Dela Cruz', 'age': 20, 'gpa': 1.5},
      {'id': '3', 'name': 'Juan Dela Cruz 1', 'age': 25, 'gpa': 1.6},
      {'id': '4', 'name': 'Juan Dela Cruz 2', 'age': 24, 'gpa': 1.7},
      {'id': '5', 'name': 'John Doe', 'age': 67, 'gpa': 1.1},
    ];

    return rawData.map((data) => Student.fromMap(data)).toList();
  }
}