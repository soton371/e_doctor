import 'package:flutter/material.dart';

class TwentyOnePage extends StatefulWidget {
  const TwentyOnePage({Key key}) : super(key: key);

  @override
  _TwentyOnePageState createState() => _TwentyOnePageState();
}

class _TwentyOnePageState extends State<TwentyOnePage> {

  var select = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Filter",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 1,
                groupValue: select,
                onChanged: (input){
                  setState(() {
                    select = input;
                  });
                },
                activeColor: Color(0xff0fccda),
              ),
              Text("Search by patient name",
                style: TextStyle(
                    fontSize: 20
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 2,
                groupValue: select,
                onChanged: (input){
                  setState(() {
                    select = input;
                  });
                },
                activeColor: Color(0xff0fccda),
              ),
              Text("Search by doctor name",style: TextStyle(
                  fontSize: 20
              ),)
            ],
          )
        ],
      )

    );
  }
}
