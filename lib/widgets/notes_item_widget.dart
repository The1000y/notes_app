import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/read_notes_cubit/cubit/read_notes_cubit.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.notes});
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: notes);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w300),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(notes.subTitle,
                    style: TextStyle(
                        color:
                            const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.6),
                        fontSize: 18)),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<ReadNotesCubit>(context).featchAllNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Color.fromARGB(255, 39, 24, 24),
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 8, top: 8),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  notes.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
