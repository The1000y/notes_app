import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/read_notes_cubit/cubit/read_notes_cubit.dart';
import 'package:notes_app/widgets/add_buttom_model_sheet.dart';
import 'package:notes_app/widgets/notes_view_body_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'notesView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (conrext) {
                    return const AddNoteButtomSheet();
                  });
            },
            child: const Icon(Icons.add)),
        body: const NotesViewBody(),
      ),
    );
  }
}
