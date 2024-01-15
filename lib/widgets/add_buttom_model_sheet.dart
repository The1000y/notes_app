import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/read_notes_cubit/cubit/read_notes_cubit.dart';

import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {}
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<ReadNotesCubit>(context).featchAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}



//  child: BlocBuilder<AddNoteCubit, AddNoteState>(
//           builder: (context, state) {
//             if (state is AddNoteLoading) {
//               return const ModalProgressHUD(
//                   inAsyncCall: true, child: AddNoteForm());
//             } else if (state is AddNoteFailure) {
//               return Text('Failed ${state.errorMessage}');
//             } else {
//               return const NotesView();
//             }
//           },
//         ),