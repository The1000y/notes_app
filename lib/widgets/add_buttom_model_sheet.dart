import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, left: 15, right: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText: 'Text'),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Contant',
              maxLine: 7,
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CustomButtom(),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
