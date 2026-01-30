import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Card Widget", style: TextStyle(color: Colors.white),),
      ),

      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.black.withAlpha(30),
            onTap: () {
              debugPrint("Card-1");
            },
            child: SizedBox(
              width: 300,
              height: 100,
              child: Column(
                children: [
                  Icon(Icons.home),
                  Text("Card-1")
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}