import 'package:flutter/material.dart';
import 'package:stateful_lesson/custombutton.dart';
import 'package:stateful_lesson/forminfo.dart';
import 'package:stateful_lesson/models/students.dart';
import 'package:stateful_lesson/screens/viewallstudents.dart';
import 'package:stateful_lesson/secondpage.dart';
import 'package:stateful_lesson/singleinputfield.dart';

class displayform extends StatefulWidget {
  const displayform({super.key});

  @override
  State<displayform> createState() => _displayformState();
}

class _displayformState extends State<displayform> {
  List<Students> thestudentlist = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void submitData() {
    if (_formKey.currentState!.validate()) {
      // Create a Student object
      Students student = Students(
        _nameController.text,
        _emailController.text,
        int.parse(_ageController.text),
      );

      // print(
      //     'Student Created: Name: ${student.name}, Email: ${student.email},, Age: ${student.age}');
      thestudentlist.add(student);
      print(thestudentlist.length);

      // Clear input fields after submission
      _nameController.clear();
      _ageController.clear();
      _emailController.clear();
    }
  }

  void NavigatetoList() {
    // for (var astudent in widget.thestudentlist) {
    //   print(
    //       'Name: ${astudent.name}, Email:${astudent.email},Age: ${astudent.age}');
    // }
    // // Navigator.push(
    // //   context,
    // //   MaterialPageRoute(
    // //       builder: (context) => const secondpage(
    // //             thestudentlist: [],
    // //           )),
    // // )
    // ;
  }

  void NavigateToViewAllScreen() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ViewAllStudentsScreen(student_list: thestudentlist,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.purpleAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.amberAccent,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        child: forminfo(),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 48),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              singleinputfield(
                                theTitle: "Name:",
                                thehinttext: "kavin",
                                thecontroller: _nameController,
                              ),
                              singleinputfield(
                                  theTitle: "Email:",
                                  thehinttext: "Example@gmail.com",
                                  thecontroller: _emailController),
                              singleinputfield(
                                  theTitle: "Age:",
                                  thehinttext: "20",
                                  thecontroller: _ageController),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    //padding: EdgeInsets.all(10),
                    child: mycustombutton(
                      buttontext: "Add Student",
                      formKey: _formKey,
                      onPressed: submitData,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //padding: EdgeInsets.all(),
              child: mycustombutton(
                buttontext: "View All Students",
                formKey: _formKey,
                onPressed: NavigateToViewAllScreen,
              ),
            )
          ],
        ),
      ),
    );
  }
}
