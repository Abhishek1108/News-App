

import 'dart:async';

import 'package:flutter/material.dart';

import '../pages/homepage.dart';



class splashScreen extends StatefulWidget {


  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  Timer timer;
  void initState(){
    super.initState();
    timer=Timer(Duration(seconds: 8),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>newsapp()));
    });
  }
  bool showmessage= false ;
   var message ="NEWS";
   @override

  @override
  Widget build(BuildContext context) {
     setState(() {
       showmessage=true;
     });
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom:100.0),
              child: CircleAvatar(

                maxRadius: 47,
                backgroundColor: Colors.red[700],
               // foregroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left:37.0),
                  child: Text("ZEE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                ),
              ),
            ),
          ),
          ),
          Container(
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:500.0),
                  child: CircleAvatar(

                    maxRadius: 25,
                    backgroundColor: Colors.deepPurple[600],
                    child:Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Text("ZEE",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white ),),
                    ),
      ),
                ),
            ),
          ),
         AnimatedPositioned(

           duration: Duration(seconds: 3),

            top: showmessage ? 313 : 200 ,
            left:228,
            child: Text(message,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.red[700],fontSize: 30),),

          ),

          Positioned(

            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top:500.0,left: 98),
                child: Text("MEDIA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.deepPurple[600]
                ),),
              ),
            ),
          ),
          Positioned(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top:440.0,left:80 ),
                child: Text(
                  "POWERED BY",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black),
                ),
              ),
            ),

          )

        ],
      ),
    );
  }
}
