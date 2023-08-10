import 'package:flutter/material.dart';
import 'package:my_assignment/add-new-form.dart';
import 'package:my_assignment/home_page.dart';
import 'package:my_assignment/splash-screen.dart';
import 'package:my_assignment/to-do-list.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: HomePage(),


      debugShowCheckedModeBanner: false,


      themeMode:ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.brown,

        appBarTheme: AppBarTheme(
          color: Colors.pink,
          elevation: 0,


          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),

      ),



      initialRoute: "/",
      routes: {
        "/":(context) => SplashScreen(),
        "":(context) => HomePage(),

      },

    );
  }
}
