
import 'package:flutter/material.dart';
import 'package:flutter_week15/card_page.dart';
import 'package:flutter_week15/column_page.dart';
import 'package:flutter_week15/listview_menu.dart';
import 'package:flutter_week15/mycard.dart';
import 'package:flutter_week15/row_page.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen ({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Flutter Development", style: TextStyle(color: Colors.white),),
      ),

    drawer: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("FlimFli lnwza007"), 
          accountEmail: Text("FlimFli@gmail.com"),
          currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/736x/8e/13/4f/8e134f6fbcb4badc984a3ab41496630b.jpg')),
        ),

        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () async {
          await  Navigator.pushReplacement(
              context,
               MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),

        ListTile(
          leading: Icon(Icons.apps),
          title: Text("Row Widget"),
          onTap: () async {
          await  Navigator.push(
              context, MaterialPageRoute(builder: (Context) => RowPage()));
          },
        ),

        ListTile(
          leading: Icon(Icons.apps),
          title: Text("Colum Widget"),
          onTap: () async {
          await  Navigator.pushNamed(
              context,  '/column');
          },
        ),

        ListTile(
          leading: Icon(Icons.apps),
          title: Text("ListView Menu"),
          onTap: () async {
          final result = await  Navigator.pushNamed(context,  '/menu');
          debugPrint("ListView Menu: $result");
          },
        ),

        ListTile(
          leading: Icon(Icons.credit_score_rounded),
          title: Text("Card and Inkwell"),
          onTap: () async {
          await  Navigator.pushNamed(
              context,  '/card');
          },
        ),

        ListTile(
          leading: Icon(Icons.credit_score_rounded),
          title: Text("My card"),
          onTap: () {
            //Navigator.pushNamed(
              //context,  '/mycard');
              Navigator.pushNamed(context, MyCardPage.id);
          },
        ),

      
      ],
    ),

      body: Center(
        child: Text("MyApp",style:  TextStyle(color: Colors.white),),
      ),

    );
}
}