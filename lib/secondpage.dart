import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stateful_lesson/models/students.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key, required this.thestudentlist});
  final List<Students> thestudentlist;

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: widget.thestudentlist.length,
      itemBuilder: (context, index) {
        final student = widget.thestudentlist[index];
        return ListTile(
          title: Text(student.name),
          subtitle: Text(' email ${student.email},Age: ${student.age}'),
        );
      },
    ));
  }
}
// // for (var astudent in widget.thestudentlist) {
//         print(
//             'Name: ${astudent.name}, Email:${astudent.email},Age: ${astudent.age}');
//       }