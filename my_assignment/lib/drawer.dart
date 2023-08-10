import 'package:flutter/material.dart';
import 'package:my_assignment/add-new-form.dart';
import 'package:my_assignment/home_page.dart';
import 'package:my_assignment/to-do-list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {


    final imageurl="https://img.freepik.com/premium-photo/little-blonde-girl-straw-hat-near-flowering-tree_106368-732.jpg";

    return Drawer(

      child: ListView(

        padding: EdgeInsets.zero,

        children: [

          DrawerHeader(

              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,

              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,

                decoration: BoxDecoration(
                  color: Colors.pink,
                ),

                accountName: Text("Mail",
                    style: TextStyle(
                      fontSize:17,
                      fontWeight: FontWeight.bold,
                    ),
                    textScaleFactor: 2.0,),

                accountEmail: Text("iqra@mail.com",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                ),),


               // currentAccountPicture: Image.network(imageurl),

                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              )),


          ListTile(
            leading: Icon(Icons.home,
            color: Colors.pink,
            size: 30,),

            title: Text("Home",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink,

            ),),

            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
          ),




          ListTile(
            leading: Icon(Icons.add,
              color: Colors.pink,
              size: 30,),

            title: Text("Add New",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,

              ),),

            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewForm()));
            },
          ),


          ListTile(
            leading: Icon(Icons.list,
              color: Colors.pink,
              size: 30,),

            title: Text("Add Task",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,

              ),),


            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ToDoList()));
            },

          ),


          ListTile(
            leading: Icon(Icons.logout,
              color: Colors.pink,
              size: 30,),

            title: Text("Logout",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,

              ),),
          ),
        ],
      ),
    );
  }
}
