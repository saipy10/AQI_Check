import 'package:flutter/material.dart';

class Good extends StatelessWidget {
  const Good({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          "Good",
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
