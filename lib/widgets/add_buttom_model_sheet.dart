import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(hintText: 'Text'),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          hintText: 'Contant',
          maxLine: 7,
        ),
      ],
    );
  }
}
