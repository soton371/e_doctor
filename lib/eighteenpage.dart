import 'dart:ui';

import 'package:flutter/material.dart';

class EighteenPage extends StatefulWidget {
  const EighteenPage({Key key}) : super(key: key);

  @override
  _EighteenPageState createState() => _EighteenPageState();
}

class _EighteenPageState extends State<EighteenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        color: Color(0xff00c8d7),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    color: Color(0xfff32029),
                    borderRadius: BorderRadius.circular(15)),
                child: Image(image: AssetImage("images/call.png"),height: 36,width: 36,),),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Image(image: AssetImage("images/video-call@1X2.png"),height: 36,width: 36,),),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Image(image: AssetImage("images/microphone (1)@1X.png"),height: 36,width: 36,),),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black,
                  ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Image(image: AssetImage("images/volume@1X.png"),height: 36,width: 36,),),
          ],
        ),
      ),
      body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("images/doctor07.jpg"), fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Dr. Mahmum",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        ),
                        Text("Ringing",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey
                          ),
                        ),
                      ],
                    )
                  ),
              ),
            ],
          )
      )
    );
  }
}

