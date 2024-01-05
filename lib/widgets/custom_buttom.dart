import 'package:flutter/material.dart';
import 'package:notes_app/constains.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.ontap, this.isLoading = false});
  final void Function()? ontap;

  final bool isLoading;

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
        child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(221, 32, 32, 32),
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
      ),
    );
  }
}
