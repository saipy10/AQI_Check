import 'package:flutter/material.dart';

class Hazardous extends StatelessWidget {
  const Hazardous({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 128, 0, 0),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Center(
        child: Text("Hazardous",
          style: TextStyle(
            color: Colors.grey[100],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }
}
