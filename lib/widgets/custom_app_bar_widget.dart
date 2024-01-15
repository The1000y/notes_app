import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onTap});
  final String text;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 25),
        ),
        CustomSearchIcon(
          icon: icon,
          onTap: onTap,
        )
      ],
    );
  }
}
