import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      home: MyHomePage(),
      theme: new ThemeData.light(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String show="";
  int counter=1;
  newDigit(String str){
    setState(() {
      if (str=="()"){
        if (counter%2!=0){str="(";}
        else str=")";
        counter+=1;        
        }
        if(str=="C"){show="";}
        else {show=show+str;}
                  
    });
  }

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
            child: Text(show,style: TextStyle(fontSize: 28),)
          ),
          Row(//row number 1 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("C");}, child:Text("C",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("()");}, child:Text("()",style:TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("%");}, child:Text("%",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("/");}, child:Text("/",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 2
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("7");}, child:Text("7",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("8");}, child:Text("8",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("9");}, child:Text("9",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("x");}, child:Text("x",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 3
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("4");}, child:Text("4",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("5");}, child:Text("5",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("6");}, child:Text("6",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("-");}, child:Text("-",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 4
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("1");}, child:Text("1",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("2");}, child:Text("2",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("3");}, child:Text("3",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("+");}, child:Text("+",style: TextStyle(fontSize: 28),)),
            ],
          ),
          Row(//row number 5
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("-");}, child:Text("+/-",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("0");}, child:Text("0",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit(".");}, child:Text(".",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: null, child:Text("=",style: TextStyle(fontSize: 28),)),
            ],
          ),
        ],
      )
    );
  }
}