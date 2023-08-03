import 'package:app_in_java/main.dart';
import 'package:app_in_java/sign-up-page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changebutton=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlue,

      appBar: AppBar(
        title: Text("android app"),
        backgroundColor: Colors.pink,
      ),


      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [


            Image.asset("assets/images/login.png",
            fit: BoxFit.cover,),


            SizedBox(
              height: 5,
            ),

            Text("WELCOME!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 2.0,),



Padding(
  padding: const EdgeInsets.symmetric(vertical: 14.0,horizontal: 32.0),
  child:   Column(

    children: [

        TextFormField(

          decoration: InputDecoration(

            labelText: "UserName",

            hintText: "Enter User Name!",


          ),

        ),


        //ElevatedButton(onPressed: onPressed, child: child)




        TextFormField(

          obscureText: true,

          decoration: InputDecoration(

            labelText: "Password",

            hintText: "Enter User Password!!",

          ),

        ),





        TextFormField(

          decoration: InputDecoration(

            labelText: "Email",

            hintText: "Enter User Email!",

          ),

        ),


        SizedBox(
          height: 30,
        ),



      //container and inkwell
      InkWell(
        onTap: ()
        {

        setState(()
        {
        changebutton=true;

        });
         /* Navigator.push(
              context, MaterialPageRoute(
              builder:(context) => SignUp()));


          */
        },
        child: AnimatedContainer(

          duration: Duration(seconds: 1),

          alignment: Alignment.center,
          width: changebutton ? 50 : 160,
          height: 50,
          child: Text("LOGIN!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
          ),),

          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(20),

          ),

        ),
      ),
    ],

  ),
)

          ],
        ),
      )
    );
  }
}
