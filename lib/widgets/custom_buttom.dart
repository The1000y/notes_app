import 'package:flutter/material.dart';
import 'package:notes_app/constains.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.ontap});
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(fontSize: 20, color: Colors.black),
        )),
      ),
    );
  }
}
