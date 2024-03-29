import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/helper/snakbar.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/color_list_view.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_text_filed.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
              hintText: 'Text',
              onsaved: (value) {
                title = value;
              }),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onsaved: (value) {
              subTitle = value;
            },
            hintText: 'Contant',
            maxLine: 7,
          ),
          const SizedBox(
            height: 33,
          ),
          const ColorListView(),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButtom(
                  isLoading: state is AddNoteLoading ? true : false,
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
                          color: Colors.blue.value);

                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                      snakBar(context, 'Note Added Successfully');
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 33,
          )
        ],
      ),
    );
  }
}
