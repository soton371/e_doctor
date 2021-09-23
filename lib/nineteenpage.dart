import 'package:flutter/material.dart';

class NineteenPage extends StatefulWidget {
  const NineteenPage({Key key}) : super(key: key);

  @override
  _NineteenPageState createState() => _NineteenPageState();
}

class _NineteenPageState extends State<NineteenPage> {
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
                              fontSize: 22,
                            ),
                          ),
                          Text("00.02.09",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Positioned(
                  right: 0,
                    height: 160,
                    width: 110,
                    child: Padding(
                      padding: EdgeInsets.only(right: 8, top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/man.jpg"), fit: BoxFit.cover),
                          border: Border.all(
                            width: 1.5,
                            color: Color(0xff4ea9ae),
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    )
                )
              ],
            )
        )
    );
  }
}
