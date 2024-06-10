import 'package:flutter/material.dart';

class UnhealthyO extends StatelessWidget {
  const UnhealthyO({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(
        child: Text("Unhealthy for Sensitive Groups",
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }
}
