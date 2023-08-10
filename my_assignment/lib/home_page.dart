import 'package:flutter/material.dart';
import 'package:my_assignment/add-new-form.dart';
import 'package:my_assignment/drawer.dart';
import 'package:my_assignment/to-do-list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int myindex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("App bar",
        style: TextStyle(
          fontSize: 25,
        ),),


        actions: [
          IconButton(
              icon:Icon(Icons.search),
                onPressed: ()
              {
              },),

          IconButton(
            icon:Icon(Icons.notification_add),
            onPressed: ()
            {

            },),
        ],
      ),



      body: Center(
        child: Text("Welcome To Flutter",
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.pink,
        decoration: TextDecoration.lineThrough,),
        textScaleFactor: 1.3,),
      ),


      bottomNavigationBar: BottomNavigationBar(
       // backgroundColor: Colors.pink,
        type: BottomNavigationBarType.shifting,



        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add,),
          label: "AddNew",
          backgroundColor: Colors.pink,),

          BottomNavigationBarItem(icon: Icon(Icons.search),
            label: "Home",
          backgroundColor: Colors.lightBlueAccent),

          BottomNavigationBarItem(icon: Icon(Icons.camera,),
            label: "Camera",
          backgroundColor: Colors.green),

        ],

        onTap: (index)
        {
          setState(() {

            myindex=index;
          });

        },
        currentIndex: myindex,




      ),





      drawer: MyDrawer(),
    );
  }
}
