import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title:Text( "To Do List"),
        backgroundColor: Colors.pink,
      ),

      body: Column(
        
        children: [
          
          Card(

            //shape: StadiumBorder(),

            child: ListTile(
                leading: Icon(Icons.add,
                color: Colors.black,),

                    trailing: Icon(Icons.delete,
                    color: Colors.black,),

                    title: Text("Task 1",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),


          ),

          SizedBox(
            height: 10,
          ),

          Card(
            child: ListTile(

              leading: Icon(Icons.add,
                color: Colors.black,),

              trailing: Icon(Icons.delete,
                color: Colors.black,),

              title: Text("Task 2",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),

            ),
          ),
          
          
          SizedBox(height: 10,),
          
          
          Card(
            child: ListTile(

              leading: Icon(Icons.add,
                color: Colors.black,),

              trailing: Icon(Icons.delete,
                color: Colors.black,),

              title: Text("Task 3",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),


            ),
          ),
        ],
      ),






        



    );
  }
}
