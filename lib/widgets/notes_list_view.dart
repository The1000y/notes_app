import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/read_notes_cubit/cubit/read_notes_cubit.dart';
import 'package:notes_app/widgets/notes_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ReadNotesCubit>(context).boxValue ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 19),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NotesItem(),
              );
            },
          ),
        );
      },
    );
  }
}
