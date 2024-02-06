import 'package:belajar/screens/output_booking.dart';
import 'package:flutter/material.dart';
import 'package:belajar/helpers/size_helper.dart';
import 'package:intl/intl.dart';

class TiketSea extends StatefulWidget {
  const TiketSea({super.key});
  
  @override
  State<TiketSea> createState() => _TiketSeaState();
}

class _TiketSeaState extends State<TiketSea> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  String _pilihTujuan = "";
  final List<String> tujuan = [
    "Whitehaven",
    "Santa Maria",
    "Baia do Sancho",
    "Grace Bay",
    "Saint Peje",
  ];
  

  void initState() {
    tglController.text = '';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                     padding: EdgeInsets.all(24),
                     child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tiket",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: namaController,
                            decoration: InputDecoration(
                              hintText: "Nama Lengkap",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Nama';
                              }
                              return null;
                            }
                          ),
                          SizedBox(height: 18),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                              hintText: "Tujuan",
                              labelText: "Pilih Tujuan",
                              border: OutlineInputBorder()),
                              items: tujuan.map((String items) {
                                int index = 0;
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                  setState(() {
                                    _pilihTujuan = newValue!;
                                  });
                              } ,
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: jumlahController,
                            decoration: InputDecoration(
                              hintText: "Jumlah",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Jumlah';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          TextFormField(
                            controller: tglController,
                            decoration: InputDecoration(
                              hintText: "Tanggal",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Tanggal';
                              }
                              return null;
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                String tgl = 
                                 DateFormat('yyy-MM-dd').format(pickedDate);
                                 setState(() {
                                   tglController.text = tgl;
                                 });
                              } else {
                                print("tanggal tidak di pilih");
                              }
                            },
                          ),
                          
                          SizedBox(height: 18),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                            // width: displayWidth(context) * 0.8,
                            height: displayHeight(context) * 0.075,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: 
                                MaterialStateProperty.all(const Color.fromARGB(255, 66, 45, 43)),
                                shape:  MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.black),
                                ),
                              ),
                            ),
                            child: Text(
                              "Sumbit",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              _submit();
                            },
                          ),
                          ), 
                          ),
                          
                        ],
                      ),
                     ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _submit() {
  final isValid = _formKey.currentState!.validate();
  if (!isValid) {
    return;
  } else {
    _formKey.currentState!.save();
    int harga = 0;
    String nama = namaController.text;
    String jumlah = jumlahController.text;
    String tujuan = _pilihTujuan;
    String tgl = tglController.text;
    String img = "";

    if (tujuan == "Whitehaven") {
      harga = 500000;
      img = "../assets/images/Whitehaven.webp";
    } 
    else if (tujuan == "Santa Maria"){
      harga = 550000;
      img = "../assets/images/santamaria.jpg";
    }
    else if (tujuan == "Baia do Sancho"){
      harga = 600000;
      img = "../assets/images/baia.jpg";
    }
    else if (tujuan == "Grace Bay"){
      harga = 650000;
      img = "../assets/images/grace.jpg";
    }
    else if (tujuan == "Saint Peje"){
      harga = 700000;
      img = "../assets/images/sainpete.jpg";
    }
    int total = harga * int.parse(jumlah);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OutputSea(
          nama: nama, jumlah: jumlah, tgl: tgl, tujuan: tujuan, harga : harga.toString(), total: total.toString(), img: img
        ),
      )
    );
  }
}
}