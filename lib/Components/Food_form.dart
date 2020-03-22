import 'package:flutter/material.dart';

class FoodForm extends StatefulWidget {
  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<FoodForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.local_dining),  
              hintText: 'Enter the new Food',  
              labelText: 'Food',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.loop),  
              hintText: 'Enter the colorine',  
              labelText: 'Calorine',  
            ),  
          ), 
          Center(
            child: FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              /**
               * Die Daten schicken
               */
            },
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20.0),
            ),
          ) 
          ),
           
      ],
    );
  }
}