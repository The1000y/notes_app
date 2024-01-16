import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/helper/snakbar.dart';

import 'package:notes_app/model/note_model.dart';

import 'package:notes_app/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';
import 'package:notes_app/widgets/edit_note_color_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          CustomAppBar(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
                snakBar(context, 'Note is Edited Successfully');
              },
              icon: FontAwesomeIcons.check,
              text: 'Edit Note'),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onChange: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onChange: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLine: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          EditNoteColorList(notes: widget.note),
        ],
      ),
    );
  }
}
