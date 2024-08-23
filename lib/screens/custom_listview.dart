import 'package:flutter/material.dart';
import 'package:stateful_lesson/models/students.dart';

class Custom_ListViewScreen extends StatefulWidget {
  const Custom_ListViewScreen({super.key});

  @override
  State<Custom_ListViewScreen> createState() => _Custom_ListViewScreenState();
}

class _Custom_ListViewScreenState extends State<Custom_ListViewScreen> {
  final List<String> fruitItems = ['Apple', 'Grapes', 'Banana', 'Berry','Apple', 'Grapes', 'Banana', 'Berry','Apple', 'Grapes', 'Banana', 'Berry','Apple', 'Grapes', 'Banana', 'Berry',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("hjbasd"),
        ),
        body: ListView.builder(
            itemCount: fruitItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(fruitItems[index]),
                subtitle: Text('Type: Fruit'),
              );
            }) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
