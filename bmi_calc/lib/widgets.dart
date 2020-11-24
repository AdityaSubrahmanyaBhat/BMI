import 'package:flutter/material.dart';

List<Widget> wid=[


  Expanded(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF1D1E33)
      ),
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            //margin: EdgeInsets.only(top:45.0),
            child: Text('FEMALE',style: TextStyle(fontSize: 30.0),),
          )
        ],
      ),
      height: 200.0,
      width: 150.0,
    ),
  ),

  Container(
    child: Center(
      child: Text('HEIGHT',style: TextStyle(fontSize: 20.0),
      ),
    ),
    margin: EdgeInsets.only(top: 25.0),
  ),
];