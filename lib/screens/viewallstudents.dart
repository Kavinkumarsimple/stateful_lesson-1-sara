import 'package:flutter/material.dart';
import 'package:stateful_lesson/models/students.dart';

class ViewAllStudentsScreen extends StatefulWidget {
  const ViewAllStudentsScreen({super.key, required this.student_list});
  final List<Students> student_list;

  @override
  State<ViewAllStudentsScreen> createState() => _ViewAllStudentsScreenState();
}

class _ViewAllStudentsScreenState extends State<ViewAllStudentsScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.student_list.length.toString()),
        ),
        body: Text(
            'View ALl page') // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
