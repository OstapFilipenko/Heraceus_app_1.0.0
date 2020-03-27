import 'dart:convert';

import '../APIConn.dart';

import 'package:flutter/material.dart';

import '../Models/Food.dart';


class FoodView extends StatefulWidget {
  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  var allFood =  new List<Food>();

  _getFood(){
    APIConn.getFood().then((response){
      setState(() {
        Iterable list = json.decode(response.body);
        allFood = list.map((model) => Food.fromJson(model)).toList();
      });
    });
  }  


  @override
  void initState() {
    super.initState();
    _getFood();
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  static const double borderRadius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(  
        itemCount: allFood.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Container(
            decoration: new BoxDecoration(
              color: Colors.blue,
              borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
                bottomLeft: Radius.circular(borderRadius),
                bottomRight: Radius.circular(borderRadius),
              )
            ),
            padding: const EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: Column(
              children: <Widget>[
                Text("ID: " + allFood[index].id),
                Text("UserId: " + allFood[index].userId),
                Text("Title: " + allFood[index].title),
                Text("Body: " + allFood[index].body),
              ],
            ),
          );
        }
      )
    );
  }
}