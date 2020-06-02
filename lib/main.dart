import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';
//import 'dart:math';
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
  int len,expr;
  evaluate(String str1){
    setState(() {
      
      var expression=Expression.parse(str1);
      final evaluator = const ExpressionEvaluator();
      var context={"1":1, "2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9, "0":0, };
      var r = evaluator.eval(expression,context);     
      show=r.toString();
      print(r); 
      
    });
  }
  cross(String str2){
      setState(() {
        show=str2.substring(0, str2.length-1);        
    });
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body:  
      Column(//this will contain the display screen and 5 rows each with 4 buttons.
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[//text will be displayed. Each row will have 4 flatbuttons.
          Container(
            
            height: 175,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                        child: Container( 
                //width: double.infinity,
                child: Text(show,style: TextStyle(fontSize: 28, color: Colors.black), textAlign: TextAlign.right,)
              ),
            ),
          ),
          Row( mainAxisAlignment: MainAxisAlignment.end, //icon row
            children: <Widget>[              
              FlatButton(onPressed: (){cross(show);}, child: Icon(Icons.backspace))
            ],
          ),
          Row(//row number 1 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("C");}, child:Text("C",style: TextStyle(fontSize: 28, color: Colors.deepOrange,),),),
              FlatButton(onPressed: (){newDigit("()");}, child:Text("( )",style:TextStyle(fontSize: 28, color: Colors.green[900]),)),
              FlatButton(onPressed: (){newDigit("/100");}, child:Text("%",style: TextStyle(fontSize: 28, color: Colors.green[900]),)),
              FlatButton(onPressed: (){newDigit("/");}, child:Text("/",style: TextStyle(fontSize: 28, color: Colors.green[900]),)),
            ],
          ),
          //SizedBox(height: 0,),
          Row(//row number 2
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("7");}, child:Text("7",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("8");}, child:Text("8",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("9");}, child:Text("9",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("*");}, child:Text("x",style: TextStyle(fontSize: 28, color: Colors.green[900]),)),
            ],
          ),
          Row(//row number 3
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("4");}, child:Text("4",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("5");}, child:Text("5",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("6");}, child:Text("6",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("-");}, child:Text("-",style: TextStyle(fontSize: 28, color: Colors.green[900]),)),
            ],
          ),
          Row(//row number 4
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("1");}, child:Text("1",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("2");}, child:Text("2",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("3");}, child:Text("3",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("+");}, child:Text("+",style: TextStyle(fontSize: 28, color: Colors.green[900]),)),
            ],
          ),
          Row(//row number 5
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(onPressed: (){newDigit("-");}, child:Text("+/-",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit("0");}, child:Text("0",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){newDigit(".");}, child:Text(".",style: TextStyle(fontSize: 28),)),
              FlatButton(onPressed: (){evaluate(show);}, child:Text("=",style: TextStyle( color: Colors.green[900],fontSize: 28, ),)),
            ],
          ),
        ],
      )
    );
  }
}
  

  
  