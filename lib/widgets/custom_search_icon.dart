import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.3),
            ),
            height: 40,
            width: 40,
          ),
          const Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
    );
  }
}
