import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/pageLayout/firstpage.dart';
import 'package:newsapp/pageLayout/server.dart';
import 'package:newsapp/pageLayout/technology.dart';
import 'package:newsapp/pageLayout/business.dart';
import 'package:newsapp/pageLayout/entertainment.dart';
import 'package:newsapp/pageLayout/health.dart';
import 'package:newsapp/pageLayout/science.dart';
import 'package:newsapp/pageLayout/sports.dart';
import 'package:newsapp/pageLayout/pagedesign.dart';

class newsapp extends StatefulWidget {
  @override
  _newsappState createState() => _newsappState();
}

class _newsappState extends State<newsapp> {
  int _currentIndex=0;
  List<Widget> _list=[
    firstpage(),
    technology(),
    business(),
    entertainment(),
    health(),
    science(),
    sports(),

  ];
  void onTappedBar(int index){
   setState(() {

     _currentIndex=index;

   });


  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,

      child: Scaffold(

        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.red,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.black,

            tabs: <Widget>[
              Tab(text:"home"),
            // Tab(text:"corona virus"),
            //  Tab(text:"India"),
             Tab(text:"technology"),
              Tab(text:"business"),
              Tab(text:"entertainment"),
              Tab(text:"health"),
              Tab(text:"science"),
              Tab(text:"sports"),


            ],
            onTap: onTappedBar,
           // currentIndex:_currentIndex,
          ),

          title: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:40.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red[700],
                  maxRadius:22 ,
                  child: Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Text("ZEE",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white ),),
                  ),

                ),

              ),
              Positioned(
              child: Padding(
                    padding: const EdgeInsets.only(left:85.0,top: 13),
                    child: Text("NEWS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red[700]),),
                  ),

              )

            ],
          ),

          leading: Icon(Icons.menu,color: Colors.black,size: 30,),
          backgroundColor:Colors.white,
          //centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:40,right:2,bottom: 4),
              child: Icon(Icons.live_tv,color:Colors.black,size: 30,),

            ),
            Padding(
              padding: const EdgeInsets.only (top:20.0,right:6),
              child: Text("LIVE TV",style: TextStyle(fontSize:14,fontWeight: FontWeight.normal,color: Colors.red ),),
            ),

          ],
        ),


        body: _list[ _currentIndex],




      ),
    );
  }
}
