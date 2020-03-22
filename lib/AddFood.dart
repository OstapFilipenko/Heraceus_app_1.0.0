import 'package:flutter/material.dart';

class AddFoodPage extends StatefulWidget {
  final Color backgroundColorOfTitle;

  const AddFoodPage({Key key, this.backgroundColorOfTitle}): super(key:key);

  @override
  _AddFoodPageState createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: widget.backgroundColorOfTitle,
        title: new Center(
          child: Text("Add new Food"),
        ) 
      ),
      body: new Center(
        child: new Text("Here you can Food to the database"),
      ),
    );
  }
}