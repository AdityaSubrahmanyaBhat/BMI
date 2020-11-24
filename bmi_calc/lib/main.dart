import 'package:bmi_calc/bmi_brain.dart';
import 'package:bmi_calc/resultPage.dart';
import 'package:bmi_calc/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inputpage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0A0E21),
      scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      routes: <String, WidgetBuilder>{
        '/resultPage':(BuildContext context)=>ResultPage()
      },
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

 // CalculatorBrain calc=CalculatorBrain();

  double bmiResult;
  String interpretation;
  String resultText;
  double sliderval=165;
  double weightval=50;
  int ageval=18;
  bool mcolorval=false,fcolorval=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
          backgroundColor: Color(0xFF1D1E33),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            elevation: 0.0,
                            onPressed: (){
                              setState(() {
                                mcolorval= mcolorval?false:true;
                                fcolorval=false;
                              });
                            },
                            color: mcolorval==true?Colors.green:Color(0xFF1D1E33),
                            padding: EdgeInsets.only(top: 68.0,bottom: 68.0,right: 45.0,left: 45.0),
                            child: Text('MALE',style: TextStyle(fontSize: 30.0),),
                          )
                        ],
                      ),
                      height: 200.0,
                      width: 150.0,
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            elevation: 0.0,
                            onPressed: (){
                              setState(() {
                                fcolorval= fcolorval?false:true;
                                mcolorval=false;
                              });
                            },
                            color: fcolorval==true?Colors.green:Color(0xFF1D1E33),
                            padding: EdgeInsets.only(top: 68.0,bottom: 68.0,right: 30.0,left: 30.0),
                            child: Text('FEMALE',style: TextStyle(fontSize: 30.0),),
                          )
                        ],
                      ),
                      height: 200.0,
                      width: 150.0,
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF1D1E33)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    wid[1],
                    Container(
                      child: Center(
                        child: Text(sliderval.toString(),style: TextStyle(fontSize: 45.0),
                        ),
                      ),
                      margin: EdgeInsets.only(top: 5.0),
                    ),
                    Slider(
                      min: 150,
                      max:180,
                      divisions: 60,
                      value: sliderval,
                      activeColor: Colors.green,
                      onChanged: (double val){
                        setState(() {
                          sliderval=val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF1D1E33)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin:EdgeInsets.only(top: 10.0),
                            child: Text('WEIGHT',style: TextStyle(fontSize: 20.0),),
                          ),
                          Container(
                            margin:EdgeInsets.only(top: 0.0),
                            child: Text(weightval.toString(),style: TextStyle(fontSize: 40.0),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                margin: EdgeInsets.only(top: 10.0),
                                child: IconButton(
                                  icon: Icon(Icons.remove),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    setState(() {
                                      weightval--;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                margin: EdgeInsets.only(top: 10.0),
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    setState(() {
                                      weightval++;
                                    });
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF1D1E33)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            margin:EdgeInsets.only(top: 10.0),
                            child: Text('AGE',style: TextStyle(fontSize: 20.0),),
                          ),
                          Container(
                            margin:EdgeInsets.only(top: 0.0),
                            child: Text(ageval.toString(),style: TextStyle(fontSize: 40.0),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                margin: EdgeInsets.only(top: 10.0),
                                child: IconButton(
                                  icon: Icon(Icons.remove),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    setState(() {
                                      ageval--;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                margin: EdgeInsets.only(top: 10.0),
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    setState(() {
                                      ageval++;
                                    });
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  //color: Color(0xFF1D1E33)
                color: Colors.pink
              ),
              child: FlatButton(
                padding: EdgeInsets.all(20.0),
                onPressed: (){
                  CalculatorBrain calc =
                  CalculatorBrain(height: sliderval, weight: weightval);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                  ));
                },
                child: Text('CALCULATE',style: TextStyle(fontSize: 20.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

