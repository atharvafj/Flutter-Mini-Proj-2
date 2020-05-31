import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(//this will contain the display screen and 5 rows each with 4 buttons.
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[//text will be displayed. Each row will have 4 flatbuttons.
          Container(
            width: double.infinity,
            child: TextField(enabled: false,),
          ),        
          Row(//row number 1 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: null, child:Text("C",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("()",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("%",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("/",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 2
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: null, child:Text("7",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("8",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("9",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("x",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 3
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: null, child:Text("4",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("5",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("6",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("-",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 4
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: null, child:Text("1",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("2",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("3",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("+",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 5
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: null, child:Text("+/-",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("0",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text(".",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("=",style: TextStyle(fontSize: 28),)),
            ],
          ),
        ],
      )
    );
  }
}