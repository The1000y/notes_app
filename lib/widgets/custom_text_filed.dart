import 'package:flutter/material.dart';
import 'package:notes_app/constains.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
  });

  final String hintText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 18,
          color: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
