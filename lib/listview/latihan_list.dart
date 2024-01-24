import 'package:flutter/material.dart';

class ListItem {
  final String img;
  final String text;

  ListItem(this.img , this.text);
}


class LatihanList extends StatelessWidget {
   LatihanList({super.key});
   final List<String> listgambar = [
    "https://media.suara.com/pictures/653x366/2021/12/27/67564-blackpink.jpg",
    "https://image.popmama.com/content-images/post/20211230/gemas-ini-foto-masa-kecil-jisoo-lisa-rose-dan-jennie-blackpinkpng-c4cd87afaabe9f5bba4d51c1f258bd24.png?width=600&height=auto",
    "https://cdn1.katadata.co.id/media/images/thumb/2020/10/16/blackpink-2020_10_16-17_29_53_b152da64b41bce8e0936d1542619b9f7_620x413_thumb.jpg",
    "https://cdn.antaranews.com/cache/1200x800/2019/10/19/PSX_20191019_162322.jpg",
    "https://cdn-brilio-net.akamaized.net/webp/news/2018/11/28/155608/750xauto-adu-gaya-4-member-blackpink-di-luar-panggung-siapa-idolamu-181128m.jpg",


   ];
  final List<ListItem> itemlist = [
    ListItem("https://akcdn.detik.net.id/community/media/visual/2020/10/22/blackpink-promosi-lovesick-girls-di-tv-amerika-1_43.jpeg?w=700&q=90", "Tertinggi di K-Pop! BLACKPINK Raih Rp 2,31 T dari Konser Tur Born Pink"),
    ListItem("https://akcdn.detik.net.id/community/media/visual/2023/09/22/blackpink_43.jpeg?w=700&q=90", "BLACKPINK Tak Lanjut Kontrak Solo di YG Entertainment, Jennie Dirikan OA"),
    ListItem("https://akcdn.detik.net.id/community/media/visual/2023/09/22/blackpink-2_43.jpeg?w=700&q=90", "BLACKPINK Perpanjang Kontrak, BLINK Dijanjikan Album Baru dan Tur Dunia"),
    ListItem("https://akcdn.detik.net.id/community/media/visual/2023/11/23/blackpink-di-istana-buckingham-2_43.jpeg?w=700&q=90", "BLACKPINK Terima Penghargaan MBE dari Raja Charles, Rose Dapat Gelar Khusus")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.ws.mms.shopee.co.id/cd6c89144f2b8fa60b70f9c5e5f2a7ec"),
                    fit: BoxFit.cover))
          ),
         
          
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 15, right:5, left: 5),
                  height: 200,
                  color: const Color.fromRGBO(255, 255, 255, 0.302),
                  
                  child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: itemlist.length,
            itemBuilder: (context, index){
             return Container(
              margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                     Container(
                    width: 150,
                 
               
                    child: Image.network(
                      itemlist[index].img,
                      width: 400,
                      height: 200,
                    ),
                  ),
                  Container(
                    width: 280,
                    margin: EdgeInsets.only(left: 10),
                    
                    child: Text(
                      itemlist[index].text,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                   
                  ],
                )
              );
            }
          ),
                ), 
                Container(
                  margin: EdgeInsets.only(top: 5),
            child: Center(child: Text("Galary")),
          ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only( right:5, left: 5),
                  height: 200,
                  
                  child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listgambar.length,
            itemBuilder: (context, index){
             return Container(
              margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                     Container(
                    width: 150,
                 
                    child: Image.network(
                      listgambar[index],
                      width: 400,
                      height: 200,
                    ),
                  ),
                 
                   
                  
                   
                  ],
                )
              );
            }
          ),
                ),
                ]
                
              )
        ],
      )
          
        
      
      
    );
  }
}
// child: ListView.separated(
//         itemCount: itemlist.length,
//         separatorBuilder: (context, index) {
//           return Divider(
//             color: Colors.black,
//           );
//         },
//         itemBuilder: (context, index) {
//           return Container(
//             margin: EdgeInsets.all(10),
//             height: 100,
//             width: 200,
//             color: itemlist[index].color,
//             child: Center(
//               child: Text(itemlist[index].text),
//             ),
//           );
//         },
//         ),