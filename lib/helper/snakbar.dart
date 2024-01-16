import 'package:flutter/material.dart';

void snakBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.white,
      content: Text(
        '$text',
        style: const TextStyle(fontSize: 15, color: Colors.green),
      ),
    ),
  );
}
