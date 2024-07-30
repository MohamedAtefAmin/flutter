import 'package:flutter/material.dart';
import 'package:level_one/pages/singin.dart';
import 'package:level_one/pages/singup.dart';
import 'package:level_one/pages/welcom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
      
      initialRoute: "/",
      routes: {
        "/":(context) =>const Welcom(),
        "/signin":(context) =>const Singin(),
        "/Signup":(context) =>const Singup(),
      },
    );
  }
}
