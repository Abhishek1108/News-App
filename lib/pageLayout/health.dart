import 'package:flutter/material.dart';
import 'package:newsapp/pageLayout/pagedesign.dart';
import 'package:newsapp/pageLayout/callServer.dart';
import 'package:http/http.dart';
import 'package:newsapp/pageLayout/server.dart';
import 'dart:convert'as jsonobj;

class health extends StatefulWidget {
  @override
  _healthState createState() => _healthState();
}

class _healthState extends State<health> {
  List<dynamic> listofnews=[];
  gettechNews(){
    Future<Response> future=server.homepagecontent("in");
    future.then((response) {
      Map<String ,dynamic> map=jsonobj.jsonDecode(response.body);
      print("Map is ${map["articles"][0]}");
      setState(() {
        listofnews=map["articles"];

      });



    }).catchError((err){
      print(err);

    });

  }
  @override
  void initState(){
    super.initState();
    gettechNews();
  }
  List<Widget> createNewsRows(){
    List<Widget> rows=listofnews.map ((currentnews){
      dynamic  authorName=currentnews["author"?? ""];
       dynamic headline=currentnews["title" ?? ""];
        dynamic  description=currentnews["description" ?? ""];
       dynamic imagetourl=currentnews["urlToImage"?? ""];
      //String headline=currentnews["title"];
      Row row=Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.network(imagetourl ?? ""),

          ),
          Expanded(
            flex: 2,
            child: Text(description ?? ""),

          )
        ],
      );
      return Padding(padding: EdgeInsets.all(5),child: row,);
    }).toList();
    return rows;

  }
  Widget prepareNews(){
    List <Widget> widgets=[];
    if(listofnews.length == 0){
      return Container(
          width: media.width,
          height: media.height,
          child: Center(
            child: CircularProgressIndicator(),
          ));
    }else{
      return Column(
        children: createNewsRows(),
      );
    }

  }
  var media;

  @override
  Widget build(BuildContext context) {
    media=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: prepareNews(),
      ),
    );
  }
}
