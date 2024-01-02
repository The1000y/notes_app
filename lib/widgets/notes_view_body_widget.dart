import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_widget.dart';

import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          CustomAppBar(
            icon: Icons.search,
            text: "Search",
          ),
          // const SizedBox(
          //   height: 4,
          // ),
          NotesListView(),
        ],
      ),
    );
  }
}
