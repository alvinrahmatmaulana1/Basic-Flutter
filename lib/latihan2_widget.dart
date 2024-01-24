import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
     width: 500,
     height: 200,
     margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(30),
     decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network("https://awsimages.detik.net.id/community/media/visual/2020/10/22/blackpink-promosi-lovesick-girls-di-tv-amerika-1_43.jpeg?w=600&q=90",
              width: 100,
              height: 100,),
              Text("BlackPink")
            ],
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network("https://awsimages.detik.net.id/community/media/visual/2020/10/22/blackpink-promosi-lovesick-girls-di-tv-amerika-1_43.jpeg?w=600&q=90",
              width: 100,
              height: 100,),
              Text("BlackPink")
            ],
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network("https://awsimages.detik.net.id/community/media/visual/2020/10/22/blackpink-promosi-lovesick-girls-di-tv-amerika-1_43.jpeg?w=600&q=90",
              width: 100,
              height: 100,),
              Text("BlackPink")
            ],
          )
        ],
      ),
    ),
    );
  }
}