import '../APIConn.dart';

import 'package:flutter/material.dart';

import '../Models/Food.dart';


class FoodView extends StatefulWidget {
  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  Future<String> lol = APIConn().getData();
  List<Food> allFood =  APIConn().allFood;

  
  
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