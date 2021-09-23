import 'package:flutter/material.dart';

class TwentySixPage extends StatefulWidget {
  const TwentySixPage({Key key}) : super(key: key);

  @override
  _TwentySixPageState createState() => _TwentySixPageState();
}

class _TwentySixPageState extends State<TwentySixPage> {

  var select = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("Payment",
            style: TextStyle(
                color: Colors.black
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width/1.4,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff0fccda),
                ),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Card",style: TextStyle(
                      fontSize: 20
                  ),),
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
                ],
              ),
            ),
            Divider(color: Colors.white.withOpacity(0.0),),

            Container(
              width: MediaQuery.of(context).size.width/1.4,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff0fccda),
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mobile banking",style: TextStyle(
                      fontSize: 20
                  ),),
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
                ],
              ),
            )
          ],
        )

    );
  }
}
