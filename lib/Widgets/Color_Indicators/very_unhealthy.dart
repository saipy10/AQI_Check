import 'package:flutter/material.dart';

class VeryUnhealthy extends StatelessWidget {
  const VeryUnhealthy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.purple, borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: Text(
          "Very Unhealthy",
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
