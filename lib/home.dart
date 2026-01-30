
import 'package:flutter/material.dart';

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
          currentAccountPicture: CircleAvatar(
            child: Icon(Icons.android),
          ),
        ),

        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () {

          },
        ),

        ListTile(
          leading: Icon(Icons.apps),
          title: Text("Row Widget"),
          onTap: () {

          },
        ),

        ListTile(
          leading: Icon(Icons.apps),
          title: Text("Colum Widget"),
          onTap: () {

          },
        ),

        ListTile(
          leading: Icon(Icons.apps),
          title: Text("ListView Menu"),
          onTap: () {
            
          },
        ),

        ListTile(
          leading: Icon(Icons.credit_score_rounded),
          title: Text("Card and Inkwell"),
          onTap: () {
            
          },
        ),

        ListTile(
          leading: Icon(Icons.credit_score_rounded),
          title: Text("My card"),
          onTap: () {
            debugPrint("Test My Card");
          },
        ),git config --global --list

      
      ],
    ),

      body: Center(
        child: Text("MyApp",style:  TextStyle(color: Colors.white),),
      ),

    );
}
}