import 'package:belajar/container_widget.dart';
import 'package:belajar/grid/grid_basic.dart';
import 'package:belajar/grid/grid_builder.dart';
import 'package:belajar/grid/grid_count.dart';
import 'package:belajar/grid/latihan_grid.dart';
import 'package:belajar/latihan1_widget.dart';
import 'package:belajar/latihan2_widget.dart';
import 'package:belajar/latihan3_widget.dart';
import 'package:belajar/listview/latihan_list.dart';
import 'package:belajar/listview/list_basic.dart';
import 'package:belajar/listview/list_builder.dart';
import 'package:belajar/listview/list_sparated.dart';
import 'package:belajar/row_widget.dart';
import 'package:belajar/column_widget.dart';
import 'package:belajar/row_column_widget.dart';
import 'package:belajar/screens/home_screen.dart';
import 'package:belajar/screens/menu_screen.dart';
import 'package:belajar/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ini Project Flutter Pertamaku",
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationMenu(),
        'second': (context) => SecondScreen(),
        'thrid': (context) => ThirdScreen(),
      },
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello Semuanya...\nBelajar Flutter....",
          style: TextStyle(
              color: const Color.fromARGB(255, 241, 16, 0),
              fontSize: 24,
              fontWeight: FontWeight.bold)),
    );
  }
}
