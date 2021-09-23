import 'package:e_doctor/eighteenpage.dart';
import 'package:e_doctor/nineteenpage.dart';
import 'package:e_doctor/seventeenpage.dart';
import 'package:e_doctor/twentyfourpage.dart';
import 'package:e_doctor/twentyonepage.dart';
import 'package:e_doctor/twentypage.dart';
import 'package:e_doctor/twentysixpage.dart';
import 'package:e_doctor/twentytwopage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TwentyFourPage()
    );
  }
}
