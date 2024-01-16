import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constains.dart';
import 'package:notes_app/model/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  List<NoteModel>? boxValue;
  featchAllNotes() {
    var box = Hive.box<NoteModel>(kPrimaryBoxName);
    boxValue = box.values.toList();

    emit(ReadNotesSuccess());
  }
}
