import 'package:app_in_java/home-page.dart';
import 'package:app_in_java/login.dart';
import 'package:app_in_java/sign-up-page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());//constructor or obj call in main
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: LoginPage(),

      debugShowCheckedModeBanner: false,


      //theme of app

      themeMode:ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),



      darkTheme: ThemeData(
        brightness:Brightness.dark,
        primarySwatch: Colors.pink,
      ),




      //manually move from one page to another
      initialRoute: "/",
      routes: {
        "/":(context) => HomePage(),
        "":(context) => HomePage(),


      },
    );
  }
}

