import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  // const LatihanGrid({super.key});

  @override
  var data = 1;
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 500,
              height: 300,
              margin: EdgeInsets.all(10),
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 3,
                children: List.generate(
                    26,
                    (index) => Container(
                          child: Card(
                            color: Colors.amber,
                            child: Center(
                              child:
                                  Text("${String.fromCharCode(64 + data++)}"),
                            ),
                          ),
                        )),
              ),
            ),
            GridView.count(
              crossAxisCount: 1,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
              children: List.generate(
                    3,
                    (index) => Container(
                      margin: EdgeInsets.all(15),
                            color: Colors.green,
                            child: Center(
                              child:
                                 FlutterLogo(size: 100,),
                            
                          ),
                        )),
                
            )
          ],
        ));
  }
}
