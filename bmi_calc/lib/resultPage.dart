import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({this.bmiResult,this.resultText,this.interpretation});
  final bmiResult,resultText,interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E33),
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 30.0,),
          Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: Text('Your Result',style: TextStyle(fontSize: 40.0),),
          ),
          SizedBox(height: 30.0,),
          Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[800]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText,style: TextStyle(fontSize: 30.0,color: resultText=='Normal'?Colors.green:Colors.red),),
                    Text(bmiResult.toStringAsFixed(1),style: TextStyle(fontSize: 100.0),),
                    Text('Normal BMI range :',style: TextStyle(fontSize: 25.0),),
                    Text('18.5-25 kg/m2',style: TextStyle(fontSize: 20.0),),
                    Container(margin: EdgeInsets.only(left: 25.0,right: 0.0),child: Text(interpretation,style: TextStyle(fontSize: 25.0),))
                  ],
                ),
              ),
          ),
          SizedBox(height: 30.0,),
          RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 30.0),
            color: Colors.pink,
            child: Text('RECALCULATE',),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
