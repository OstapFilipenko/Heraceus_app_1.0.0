import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'Models/Food.dart';

class APIConn{
  List<Food> allFood;
  
  Future<String> getData() async {
      var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {
        "Accept": "application/json"
        },
      );

      allFood = (json.decode(response.body) as List).map((i) =>
              Food.fromJson(i)).toList();
      
      return "allFood";
  }

}