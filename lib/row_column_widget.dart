import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("ini adalah isi row 1"),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Ini Adalah Isi Column 1"),
            Text("Ini Adalah Isi Column 2"),
            Text("Ini Adalah Isi Column 3"),
          ],
        ),
        Text("ini adalah isi row 2"),
        
          
      ],
    );
  }
}