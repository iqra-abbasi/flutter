import 'package:flutter/material.dart';
import 'package:my_assignment/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: InkWell(
          onTap: ()
    {

            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },

          child: Container(
            child: FlutterLogo(
              size: 150.0,
            ),


          ),
        ),
      ),
    );

  }
}
