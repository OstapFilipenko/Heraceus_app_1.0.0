import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class FoodView extends StatefulWidget {
  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  List allFood;

  Future<String> getData() async {
      var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {
        "Accept": "application/json"
        },
      );
      allFood = json.decode(response.body);
      print(allFood);
      return "Success!";
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
                Text("ID: " + allFood[index]['id']),
                Text("UserId: " + allFood[index]['userId']),
                Text("Title: " + allFood[index]['title']),
                Text("Body: " + allFood[index]['body']),
              ],
            ),
          );
        }
      )
    );
  }
}