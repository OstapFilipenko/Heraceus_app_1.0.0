import 'package:flutter/material.dart';

class FoodForm extends StatefulWidget {
  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<FoodForm> {
 final _formKey = GlobalKey<FormState>();  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(  
              decoration: const InputDecoration(  
                icon: const Icon(Icons.local_dining),  
                hintText: 'Enter the new Food',  
                labelText: 'Food',  
              ),
              validator: (value){
                if(value.isEmpty){
                  return 'Please enter a Value';
                }
              },  
            ),  
            TextFormField(  
              decoration: const InputDecoration(  
                icon: const Icon(Icons.loop),  
                hintText: 'Enter the colorine',  
                labelText: 'Calorine',  
              ),
              validator: (value){
                if(value.isEmpty){
                  return 'Please enter a Value';
                }
              },  
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
                if (_formKey.currentState.validate()) {  
                    Scaffold.of(context)  
                        .showSnackBar(SnackBar(content: Text('Adding the Datas into the DB...')));  
                  }  
              },
              child: Text(
                "Add",
                style: TextStyle(fontSize: 20.0),
              ),
            ) 
            ),
            
        ],
      )
    ); 
    
   
  }
}