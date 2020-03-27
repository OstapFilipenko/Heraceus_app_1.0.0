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
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(  
        itemCount: allFood.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Card(
            color: Colors.blueAccent,
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