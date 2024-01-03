import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constains.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kPrimaryBoxName);
  runApp(const Notes_app());
}

// ignore: camel_case_types
class Notes_app extends StatelessWidget {
  const Notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: const NotesView(),
    );
  }
}
