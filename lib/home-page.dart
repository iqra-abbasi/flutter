import 'package:app_in_java/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.purple,
      ),


      body: Center(
        child: Container(
          child: Text("Welcome To Flutter!",
            style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textScaleFactor: 2.0,),
        ),
      ),



      drawer: Mydrawer(),
    );
  }
}
