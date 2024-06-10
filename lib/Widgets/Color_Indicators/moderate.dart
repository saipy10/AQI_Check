import 'package:flutter/material.dart';

class Moderate extends StatelessWidget {
  const Moderate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow.shade600,
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: Text(
          "Moderate",
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
