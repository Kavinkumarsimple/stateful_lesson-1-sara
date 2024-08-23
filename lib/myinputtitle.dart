import 'package:flutter/material.dart';

// ignore: camel_case_types
class myinputtitle extends StatelessWidget {
  const myinputtitle({super.key, required this.thetitle});
  final String thetitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // color: Colors.amberAccent,
          child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          thetitle,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      )),
    );
  }
}
