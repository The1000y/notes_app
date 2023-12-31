import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w300),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('build your career with tharwat samy ',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 18)),
            ),
            trailing: IconButton(
              onPressed: () {},
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
                'May21 , 2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
