import 'package:belajar/screens/detail_sea_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListSeaScreen extends StatelessWidget {
  final List<Map<String , dynamic>> seaData = [
    {
      "nama" : "Whitehaven",
      "image" : "../assets/images/Whitehaven.webp",
      "desc" : "Peringkat pertama pantai terindah di dunia berasal dari pantai Whitehaven di pulau Whitsunday, Australia. Pantai ini memiliki pasir putih, laut berwarna biru cerah, dan dikelilingi pegunungan. Air di pantai sangat jernih dan pemandangan hijau rimbun memanjakan mata. Wisatawan bisa melakukan tur memakai perahu, untuk berkeliling."
    },
    {
      "nama" : "Santa Maria",
      "image" : "../assets/images/santamaria.jpg",
      "desc" : "Pantai Santa Maria berada di peringkat kedua, sebagai pantai terindah di dunia. Wisatawan bisa menikmati karang dalam laut ketika menyelam. Pantai Santa Maria memiliki air yang jernih dan segar. Pengunjung juga bisa berjemur dan relaksasi di pasir putih."
    },
    {
      "nama" : "Baia do Sancho",
      "image" : "../assets/images/baia.jpg",
      "desc" : "Negara Brazil di benua Amerika Selatan memiliki pantai terindah. Pantai Baia do Sancho mendapat ulasan sebagai pantai terbaik di dunia. Pantai ini berada di Taman Nasional Fernando de Noronha. Wisatawan bisa menikmati petualangan di salah satu pantai terindah di dunia yang berpasir putih ini. Pengunjung bisa berjalan sepanjang jalan kayu, menuruni tangga, hingga ke ngarai batu. Ketika tiba di pantai, Baia do Sancho menawarkan pasir putih dan air biru kehijauan. Wisatawan dapat melihat hewan laut seperti ikan pari, kepiting, dan hiu kecil."
    },
    {
      "nama" : "Grace Bay",
      "image" : "../assets/images/grace.jpg",
      "desc" : "Pantai di pulau barat kepulauan Caicon ini berada di Kepulauan Turks dan Caicos. Pulau kecil di Samudera Atlantik ini masih berada dalam wilayah administrasi Inggris. Pantai Grace Bay memiliki pemandangan wisata menakjubkan karena air kebiruan dan pasir putih. Sekitar pantai tidak ada bebatuan dan polusi. Grace Bay berada di samudra Atlantik, sehingga ombak tetap tenang dan aman. Hampir semua resort besar dan mewah berada di salah satu pantai terindah di dunia ini. Wisatawan dapat mengikuti olahraga air dan fasilitas di sekitar pantai."
    },
    {
      "nama" : "Saint Peje",
      "image" : "../assets/images/saintpete.jpg",
      "desc" : "Pantai di negara bagian Florida ini menawarkan pemandangan pantai yang indah. Ada pasir putih yang luas dan air laut biru jernih. Pantai Saint Pete dikenal dengan olahraga air ekstrim, contohnya kiteboarding, selancar angin, dan paddle boarding."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("../assets/images/background.jpg"),
            fit: BoxFit.cover
            )
        ),
        child: ListView.builder(
          itemCount: seaData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailSeaScreen(
                      nama: seaData[index]["nama"],
                      image: seaData[index]["image"],
                      desc: seaData[index]["desc"]
                    ),
                    ),
                  );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context)*0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${seaData[index]["image"]}"),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                  ),
                  child: Text(
                    "${seaData[index]["nama"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      )
      );
  }
}