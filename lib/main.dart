import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'happy.ly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('happy.ly'),
      ),
      body: Center(
          child: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstQuestion()),
            );
          },
          label: Text("Let's get started")
      ),
      ),
    );
  }
}

class FirstQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AutoSizeText(
              'How was your day?',
              style: TextStyle(fontSize: 25),
              maxLines: 2,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                width: 100,
                child: FloatingActionButton.extended(
                  heroTag: "Good",
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstQuestionGood()),
                );
                },
                  label: Text("Good"),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                child: FloatingActionButton.extended(
                  heroTag: "Bad",
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstQuestionBad()),
                );
                },
                  label: Text("Bad"),
                ),
              ),
            ],),
        ],)
    ));
  }
}

class FirstQuestionGood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstQuestionGoodState();
  }
}

class _FirstQuestionGoodState extends State<FirstQuestionGood> {
  int radioValue = 0;
  List<String> _a = ['Education', 'Relationship', 'Work'];
  int disp = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;

      if(radioValue == _a.length) {
        disp = 0;
      } else {
        disp = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Question 2')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AutoSizeText(
                  'Why was your day good?',
                  style: TextStyle(fontSize: 25),
                  maxLines: 2,
                ),
              SizedBox(height: 50,),
              Column(children: _a
                .map((elem) => Row(
                    children: <Widget>[
                      SizedBox(width: 60),
                      Radio(
                        value: _a.indexOf(elem),
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                      ),
                      AutoSizeText(
                        elem,
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                      ),
                    ],
                  )
                ).toList(),),
              SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                width: 100,
                child: FloatingActionButton.extended(
                  heroTag: "Ok",
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondQuestion()),
                );
                },
                  label: Text("Ok"),
                ),
              ),              
            ],),
        ],),)
      ),
    );
  }
}

class FirstQuestionBad extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstQuestionBadState();
  }
}

class _FirstQuestionBadState extends State<FirstQuestionBad> {
  int radioValue = 0;
  List<String> _a = ['Education', 'Relationship', 'Work'];
  int disp = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;

      if(radioValue == _a.length) {
        disp = 0;
      } else {
        disp = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Question 2')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AutoSizeText(
                  'Why was your day bad?',
                  style: TextStyle(fontSize: 25),
                  maxLines: 2,
                ),
              SizedBox(height: 50,),
              Column(children: _a
                .map((elem) => Row(
                    children: <Widget>[
                      SizedBox(width: 60),
                      Radio(
                        value: _a.indexOf(elem),
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                      ),
                      AutoSizeText(
                        elem,
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                      ),
                    ],
                  )
                ).toList(),),
              SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                width: 100,
                child: FloatingActionButton.extended(
                  heroTag: "Ok",
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondQuestion()),
                );
                },
                  label: Text("Ok"),
                ),
              ),              
            ],),
        ],),)
      ),
    );
  }
}

class SecondQuestion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondQuestionState();
  }
}

class _SecondQuestionState extends State<SecondQuestion> {
  int radioValue = 0;
  List<String> _a = ["Happy", "Blessed", "Confused", "Stressed", "Angry", "Low"];
  int disp = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;

      if(radioValue == _a.length) {
        disp = 0;
      } else {
        disp = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Question 3')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                AutoSizeText(
                  'How did you feel throughout the',
                  style: TextStyle(fontSize: 25),
                  maxLines: 2,
                ),
                
                AutoSizeText(
                  'day?',
                  style: TextStyle(fontSize: 25),
                  maxLines: 2,
                ),
              SizedBox(height: 50,),
              Column(children: _a
                .map((elem) => Row(
                    children: <Widget>[
                      SizedBox(width: 60),
                      Radio(
                        value: _a.indexOf(elem),
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                      ),
                      AutoSizeText(
                        elem,
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                      ),
                    ],
                  )
                ).toList(),),
              SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                width: 100,
                child: FloatingActionButton.extended(
                  heroTag: "Ok",
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdQuestion()),
                );
                },
                  label: Text("Ok"),
                ),
              ),              
            ],),
        ],),)
      ),
    );
  }
}

class ThirdQuestion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdQuestionState();
  }
}

class _ThirdQuestionState extends State<ThirdQuestion> {
  int radioValue = 0;
  List<String> _a = ["Values", "Mentor", "Collegue", "Teammate"];
  int disp = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;

      if(radioValue == _a.length) {
        disp = 0;
      } else {
        disp = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Question 4')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                AutoSizeText(
                  'What makes a good friend?',
                  style: TextStyle(fontSize: 25),
                  maxLines: 2,
                ),
              SizedBox(height: 50,),
              Column(children: _a
                .map((elem) => Row(
                    children: <Widget>[
                      SizedBox(width: 60),
                      Radio(
                        value: _a.indexOf(elem),
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                      ),
                      AutoSizeText(
                        elem,
                        style: TextStyle(fontSize: 20),
                        maxLines: 2,
                      ),
                    ],
                  )
                ).toList(),),
              SizedBox(height: 20,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                width: 200,
                child: FloatingActionButton.extended(
                  heroTag: "1",
                  onPressed: (){},
                  label: Text("Good day to you!"),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 200,
                child: FloatingActionButton.extended(
                  heroTag: "2",
                  onPressed: (){},
                  label: Text("Conference call"),
                ),
              ),              
            ],),
        ],),)
      ),
    );
  }
}
