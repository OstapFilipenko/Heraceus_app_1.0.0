import 'package:flutter/material.dart';
import 'package:heraceus_v1_0_0/Components/Food_form.dart';

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
      body: FoodForm(),
    );
  }
}