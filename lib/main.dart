import 'package:flutter/material.dart';
import 'package:newsapp/pageLayout/technology.dart';
import 'package:newsapp/pages/homepage.dart';
import 'package:newsapp/pageLayout/splashscreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ZEENEWS",
      //home: newsapp(),
    home: splashScreen(),



  )
  );
}