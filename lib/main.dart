import 'package:flutter/material.dart';

import 'Pages/AddFood.dart';
import 'Pages/ConsumedFood.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavBar(),
    );
  }
}



class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIdex = 0;
  final List<Widget> _childrenOfMenu = [
    ConsumedFoodPage(backgroundColorOfTitle: Colors.blue,),
    AddFoodPage(backgroundColorOfTitle: Colors.blue)
  ];
  void onTappedMenu(int index){
    setState(() {
      _currentIdex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childrenOfMenu[_currentIdex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        onTap: onTappedMenu,
        currentIndex: _currentIdex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text("Consumed Food"),
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Add Food"),
            backgroundColor: Colors.blue
          ),
        ] 
      ),
    );
  }
}