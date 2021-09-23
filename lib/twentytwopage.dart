import 'package:e_doctor/model.dart';
import 'package:flutter/material.dart';

class TwentyTwoPage extends StatefulWidget {
  const TwentyTwoPage({Key key}) : super(key: key);

  @override
  _TwentyTwoPageState createState() => _TwentyTwoPageState();
}

class _TwentyTwoPageState extends State<TwentyTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Appointment History",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          //1st section start
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Completed',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                Container(
                  width: 2.5,
                  height: 20,
                  color: Colors.black,
                ),
                Text('Upcoming',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                Container(
                  width: 2.5,
                  height: 20,
                  color: Colors.black,
                ),
                Text('Canceled',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                Icon(Icons.segment, size: 35,)
              ],
            ),
          ),
          //1st section end
          //2nd section start
          Expanded(
            child: ListView.builder(
                itemCount: Info().lists.length,
                itemBuilder: (context, index){
                  var data = Info().lists;
                  colorChange(){
                    if(data[index].status == 'Upcoming'){
                      return Color(0xfff29423);
                    }else if(data[index].status == 'Canceled'){
                      return Color(0xfff22029);
                    }else{
                      return Color(0xff44e89a);
                    }
                  }
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xff4ea9ae),
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(data[index].image),
                            radius: 28,
                          ),
                          //Name title section start
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data[index].dr_name),
                              Text(data[index].title),
                              Text(data[index].pa_name),
                            ],
                          ),
                          //Name title section end
                          Column(
                            children: [
                              Divider(height: MediaQuery.of(context).size.height/18,),
                              Row(
                                children: [
                                  Image(image: AssetImage('images/calendar@1X.png'),height: 14,width: 14,),
                                  Text(' ${data[index].date}'),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(data[index].status,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    color: colorChange()
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Image(image: AssetImage('images/time-left@1X.png'),height: 14,width: 14,),
                                  Text(' ${data[index].time}'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),
          //2nd section end
        ],
      ),
    );
  }
}
