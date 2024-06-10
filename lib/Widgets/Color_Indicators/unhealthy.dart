import 'package:flutter/material.dart';

class Unhealthy extends StatelessWidget {
  const Unhealthy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(
        child: Text("Unhealthy",
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }
}
