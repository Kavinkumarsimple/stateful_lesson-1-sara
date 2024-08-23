import 'package:flutter/material.dart';

class mycustombutton extends StatefulWidget {
  const mycustombutton(
      {super.key,
      required this.buttontext,
      required this.onPressed,
      required this.formKey});
  final String buttontext;
  final VoidCallback onPressed;
  final GlobalKey<FormState> formKey;

  @override
  State<mycustombutton> createState() => _mycustombuttonState();
}

class _mycustombuttonState extends State<mycustombutton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(59, 143, 240, 1),
              padding: EdgeInsets.fromLTRB(136, 9, 136, 9)),
          //     iconColor: Color.fromRGBO(59, 143, 255, 1.0)),

          onPressed: () {
            if (widget.formKey.currentState!.validate()) {
              widget.formKey.currentState!.save();
              widget.onPressed();
            }
          },
          child: Text(
            widget.buttontext,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
