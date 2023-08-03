import 'package:app_in_java/login.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      
      
      appBar: AppBar(
        title: Text("Sign Up Page!!"),
        backgroundColor: Colors.red,
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0,horizontal: 32.0),
          child: Column(
            children: [
              Image.asset("assets/images/sign.png",
              fit: BoxFit.cover,
              width: 600,),

              SizedBox(
                height: 20,
              ),


              TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter your email",
                    labelText: "Email",
                  ),
                ),



              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "enter your password!",
                  labelText: "Password",
                ),
              ),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "confirm password!",
                  labelText: "Confirm Password",
                ),
              ),



              SizedBox(
                height: 30,
              ),

              ElevatedButton(

                child: Text("Sign Up!"),
                style: TextButton.styleFrom(
                  minimumSize: Size(200, 60),
                ),
                onPressed: ()
                {
                  },
              ),

SizedBox(
  height: 30,
),

              ElevatedButton(

                  child: Text("GO BACK!"),
                style: TextButton.styleFrom(
                  minimumSize: Size(200, 60),
                ),
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
