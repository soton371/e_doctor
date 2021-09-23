import 'package:e_doctor/eighteenpage.dart';
import 'package:flutter/material.dart';

class SeventeenPage extends StatefulWidget {
  const SeventeenPage({Key key}) : super(key: key);

  @override
  _SeventeenPageState createState() => _SeventeenPageState();
}

class _SeventeenPageState extends State<SeventeenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff00c8d7),
        body: Center(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: Colors.black26,
                        offset: Offset(3, 5),
                        blurRadius: 10,
                      ),
                    ]),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width/1.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Contact your Doctor",
                        style: TextStyle(fontSize: 22),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EighteenPage())),
                            child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xfff32029),
                                    borderRadius: BorderRadius.circular(15)),
                              child: Image(image: AssetImage("images/call.png"),height: 36,width: 36,),
                            ),
                          ),

                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xff3bc886),
                                  borderRadius: BorderRadius.circular(15)),
                            child: Image(image: AssetImage("images/video-call@1X.png"),height: 36,width: 36,),),
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xff279be8),
                                  borderRadius: BorderRadius.circular(15)),
                            child: Image(image: AssetImage("images/speech-bubble@1X.png"),height: 36,width: 36,),),
                        ],
                      )
                    ],
                  ),
                ))));
  }
}
