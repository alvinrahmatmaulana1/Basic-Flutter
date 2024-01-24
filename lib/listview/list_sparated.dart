import 'package:flutter/material.dart';

class BelajarListSeparated extends StatelessWidget {
   BelajarListSeparated({super.key});
  
  final List<Color> colorList = [Colors.grey,Colors.blue,Colors.purple, Colors.red, Colors.pink];
  final List<String> textList = ["Partai Banteng","Partai Kabah","Partai Alhamdulillah","islam","indonesia"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
            itemCount: colorList.length,
            separatorBuilder: (context, index){
            return Divider(
              color: Colors.grey
            );
            },
            itemBuilder: (context, index){
             return Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 200,
                color: colorList[index],
                child: Center(
                  child: Text(textList[index]),
                ),
              );
            }
            
          ),
          
        
    );
  }
}