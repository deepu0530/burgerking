import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
                child: Column(
                  children: [
                    first(name: "Burger King India Ltd.",),
                    first(name: "IPO is now LIVE",),
                    SizedBox(height: 40,),
               Container(
                 height: 100,
                 width: 500,
                 padding: EdgeInsets.symmetric(vertical: 20,),
                 decoration: BoxDecoration(
                   color: Colors.indigo[800],
                   shape: BoxShape.rectangle,
                   borderRadius: BorderRadius.circular(10.0),
                 ),
                 child: Column(
                   children: [
                     second(name: "Issue Period",),
                     second(name: "2nd Dec to 4th Dec 2020",),
                   ],
                 ),
               ),
                    SizedBox(height: 40,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20,),
                  child: Image(image: AssetImage("assets/images/burger king.jfif")),
                ),
                    SizedBox(height: 40,),
                       Row(
                        children: [
                          three(name: "Price Band",color: Colors.lightBlue[100],name2: "59-60",),
                          SizedBox(width: 10,),
                          three(name: "Lot Size",color: Colors.lightBlue[100],name2: "250 Shares",),
                        ],
                      ),
                  ],
                ),
              ),
            ),
        ),
    );
  }
}

class three extends StatelessWidget {
  const three({
    this.name,this.color,this.name2,
    Key key,
  }) : super(key: key);
final String name;
final Color color;
  final String name2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      padding: EdgeInsets.symmetric(vertical: 20,),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            name,
            style: TextStyle(color:Colors.indigo,fontSize: 16,fontWeight: FontWeight.bold),
      ),
            Text(
              name2,
              style: TextStyle(color: Colors.indigo,fontSize: 12,fontWeight: FontWeight.bold),
            ),
          ],
        ),
                ),
    );
  }
}

class second extends StatelessWidget {
  const second({
    this.name,
    Key key,
  }) : super(key: key);
final String name;
  @override
  Widget build(BuildContext context) {
    return
          Center(
            child: Text(
              name,
              style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
            ),
          );
  }
}

class first extends StatelessWidget {
  const first({
    this.name,
    Key key,
  }) : super(key: key);
final String name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
       name,
        style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),
      ),
    );
  }
}
