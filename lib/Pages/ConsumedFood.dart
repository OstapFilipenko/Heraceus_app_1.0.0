import 'package:flutter/material.dart';
import '../Components/foodCardSection.dart';
class ConsumedFoodPage extends StatefulWidget {
  
    final Color backgroundColorOfTitle;

    const ConsumedFoodPage({Key key, this.backgroundColorOfTitle}): super(key:key);

  @override
  _ConsumedFoodPageState createState() => _ConsumedFoodPageState();
}

class _ConsumedFoodPageState extends State<ConsumedFoodPage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: widget.backgroundColorOfTitle,
        title: new Center(
          child: new Text("Consumed Food"),
        ),
      ),
      body: new Center(
        child: FoodView(),
      ),
    );
  }
}