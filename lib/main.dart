
import 'package:flutter/material.dart';
import 'package:flutter_week15/card_page.dart';
import 'package:flutter_week15/column_page.dart';
import 'package:flutter_week15/home.dart';
import 'package:flutter_week15/mycard.dart';
import 'package:flutter_week15/row_page.dart';
import 'package:flutter_week15/listview_menu.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});


@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'flutter App',
    //home: HomeScreen(),
    initialRoute: '/',
    routes: {
      '/':(context) => HomeScreen(),
      '/row': (context) => RowPage(),
      '/column':(context) => ColumnPage(),
      '/menu':(context) => listview_menu(),
      '/card':(context) => CardPage(),
      //'/mycard':(context) => MyCardPage(),
      MyCardPage.id: (context) => MyCardPage(),
    },
  );
}
}