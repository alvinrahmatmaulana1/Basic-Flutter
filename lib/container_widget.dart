import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 800,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10)),
      child: Layer2()
    );
  }
}

class Layer2 extends StatelessWidget {
  const Layer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 600,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)),
          child: Layer3(),
      
    );
  }
}

class Layer3 extends StatelessWidget {
  const Layer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
    (width: 600,
      height: 600,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)),
      child: Layer4(),
    );
  }
}

class Layer4 extends StatelessWidget {
  const Layer4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 600,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        
          image: DecorationImage(
          image: NetworkImage("https://pbs.twimg.com/media/Fs-rj9qaIAkP4-x.jpg"),
          fit: BoxFit.fill
        ),
          borderRadius: BorderRadius.circular(10)),);
  }
}
