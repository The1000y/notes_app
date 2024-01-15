import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.1),
            ),
            height: 40,
            width: 40,
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
    );
  }
}
