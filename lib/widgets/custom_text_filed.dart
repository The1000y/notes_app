import 'package:flutter/material.dart';
import 'package:notes_app/constains.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
    this.onsaved,
    this.onChange,
  });

  final String hintText;
  final int maxLine;
  final void Function(String?)? onsaved;
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return ('Feild is Required');
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(131, 98, 252, 216),
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
