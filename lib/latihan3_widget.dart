import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            width: 550,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.ws.mms.shopee.co.id/cd6c89144f2b8fa60b70f9c5e5f2a7ec"),
                    fit: BoxFit.cover))),
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  child: Image.network("https://awsimages.detik.net.id/community/media/visual/2020/10/22/blackpink-promosi-lovesick-girls-di-tv-amerika-1_43.jpeg?w=600&q=90",
              width: 200,
              height: 200,
              ),
                  ),
                  Container(
                    child: 
                    Text(
                " Blackpink merupakan grup vokal wanita Korea yang memiliki lagu dengan posisi tertinggi di Billboard Hot 100, berada di nomor 55 dengan 'Ddu-Du Ddu-Du', dan di Billboard 200, berada di nomor 40 dengan EP berjudul Square Up. Blackpink merupakan grup pop Korea perempuan pertama dan satu-satunya yang memasuki dan memuncaki Emerging Artists Billboard. ",
                textAlign: TextAlign.justify,
              ),
                  )
              // Text(
              //   " Blackpink merupakan grup vokal wanita Korea yang memiliki lagu dengan posisi tertinggi di Billboard Hot 100, berada di nomor 55 dengan 'Ddu-Du Ddu-Du', dan di Billboard 200, berada di nomor 40 dengan EP berjudul Square Up. Blackpink merupakan grup pop Korea perempuan pertama dan satu-satunya yang memasuki dan memuncaki Emerging Artists Billboard. ",
              //   textAlign: TextAlign.justify,
              // )
            ],
          ),
        ),
        Container(
            width: 500,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Galery",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      "https://static.dw.com/image/65370607_605.jpg",
                      width: 150,
                      height: 150,
                    ),
                    Image.network(
                      "https://cdn.antaranews.com/cache/1200x800/2023/04/26/21F7B110-1B17-4B7B-B061-072B9ED16A1D.jpeg",
                      width: 150,
                      height: 150,
                    ),
                    Image.network(
                      "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/24/blackpink-coachella-3984661996.png",
                      width: 150,
                      height: 150,
                    ),
                  ],
                )
              ],
            ))
      ],
      )
    );
  }
}
