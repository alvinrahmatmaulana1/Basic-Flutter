import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(
    icon: Icon(Icons.add_to_drive_outlined, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
  ), 
        title: Text("Second Screen"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Adalah Halaman Ke Dua")
          ]
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Thrid Screen"),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Adalah Halaman Ke Tiga"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
                child: Text("Back"),
              
            )
          ]
        ),
      ),
    );
  }
}