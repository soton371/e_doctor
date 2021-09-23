import 'package:flutter/material.dart';

class TwentyFourPage extends StatefulWidget {
  const TwentyFourPage({Key key}) : super(key: key);

  @override
  _TwentyFourPageState createState() => _TwentyFourPageState();
}

class _TwentyFourPageState extends State<TwentyFourPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Emergency",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container()
    );
  }
}
