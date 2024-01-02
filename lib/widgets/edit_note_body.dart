import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CustomAppBar(icon: FontAwesomeIcons.check, text: 'Edit Note'),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hintText: 'Contant',
            maxLine: 10,
          )
        ],
      ),
    );
  }
}
