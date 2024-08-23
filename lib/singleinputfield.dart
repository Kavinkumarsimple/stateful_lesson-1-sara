import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class singleinputfield extends StatefulWidget {
  singleinputfield(
      {super.key,
      required this.thehinttext,
      required this.thecontroller,
      required this.theTitle});
  var thehinttext;
  final String theTitle;
  TextEditingController thecontroller;

  @override
  State<singleinputfield> createState() => _singleinputfieldState();
}

class _singleinputfieldState extends State<singleinputfield> {
  var _theController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.theTitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                )),
            TextFormField(
              controller: widget.thecontroller,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    color: Color.fromRGBO(153, 151, 151,
                        1)), //background: rgba(153, 151, 151, 1);

                hintText: widget.thehinttext,
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(12, 14, 12, 14),
                ),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                errorStyle: TextStyle(color: Colors.redAccent),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter  $_theController';
                }
                
                return null;
              
              },
            ),
          ],
        ),
      ),
    );
  }
}
