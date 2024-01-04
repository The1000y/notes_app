import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add_note_cubit/cubit/add_note_cubit.dart';

import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Fauild ${state.errorMessage}');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const SingleChildScrollView(child: AddNoteForm()));
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