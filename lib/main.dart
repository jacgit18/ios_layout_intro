import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class  MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return MaterialApp(
      title: 'Joshua Carpentier',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Joshua Carpentier -home'),

    );
  }
  }
class MyHomePage extends StatefulWidget{

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomepageState createState() => _MyHomepageState();
  }

  class _MyHomepageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
  print('i am here ' + widget.title);
  return Scaffold(
  appBar: AppBar(
  title: Text(widget.title),
  ),
  body: Column(crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    WhatGoesOnRows('Cars', 'Honda', 'Nissan'),
    WhatGoesOnRows('Laptops', 'IBM', 'HP'),
    WhatGoesOnRows('Planes', 'Boeing', 'Airbus'),
  ],
  ),
  );

  }
  }

  class WhatGoesOnRows extends StatelessWidget{
  final String first, second, third;
  const WhatGoesOnRows(this.first,this.second, this.third);
  @override
  Widget build(BuildContext context){
 return  Row(children: <Widget>[
  Expanded(child: Text(first + ':',textAlign: TextAlign.center,),),
  Expanded(child: Text(second + ':',textAlign: TextAlign.center,),),
  Expanded(child: Text(third + ':',textAlign: TextAlign.center,),),
  ],);

  }
  }







