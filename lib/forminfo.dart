import 'package:flutter/material.dart';

class forminfo extends StatelessWidget {
  const forminfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amberAccent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Add Student",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "please enter student details",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 99, 97, 97)),
                ),
              ), //#999797
            ],
          ),
          //Column(
          // children: [myinputtitle(thetitle: "Name")],
        ],
      ),
    );
  }
}
