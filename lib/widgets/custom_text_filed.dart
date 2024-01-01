import 'package:flutter/material.dart';
import 'package:notes_app/constains.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor),
            hintText: 'Title',
            hintStyle: TextStyle(fontSize: 18, color: kPrimaryColor)),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
