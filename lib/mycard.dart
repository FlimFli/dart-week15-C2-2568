import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final IconData? icon;
  final Color? bkColor;

  ListMenu({required this.title, required this.icon, required this.bkColor});
}

List<ListMenu> menus = [
  ListMenu(title: "MENU-1", icon: Icons.person, bkColor: Colors.black),
  ListMenu(title: "MENU-2", icon: Icons.person_add, bkColor: Colors.grey),
  ListMenu(title: "MENU-3", icon: Icons.wifi, bkColor: Colors.blueGrey),
];

class MyCardPage extends StatelessWidget{
  static String id = '/mycard';

  const MyCardPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("My Card", style: TextStyle(color: Colors.white),),
      ),

      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(menus.length, (index){
            return Card(
            color: menus[index].bkColor,
            margin: EdgeInsets.all(12.0),
            child: InkWell(
              onTap:() {
                debugPrint(menus[index].title);
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      menus[index].icon,
                      size: 40,
                      color: Colors.white,),
                    Text("${menus[index].title}", style: TextStyle(fontSize: 15, color: Colors.black)),
                  ],
                ),
              ),
            ),
            );
          }),
      ),
      ),

    );
  }
}