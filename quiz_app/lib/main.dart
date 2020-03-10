import 'package:flutter/material.dart';
import 'questions_class.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(child: Quizler()),
      ),
    );
  }
}

class Quizler extends StatefulWidget {
  @override
  _QuizlerState createState() => _QuizlerState();
}

class _QuizlerState extends State<Quizler> {
  Question questions = Question();
  List<Icon> solution = [];
  void handleQuestions({String button, bool result}) {
    if (button == 'True') {
      if(result == true){
        solution.add(Icon(Icons.check));
      }
      else {
        solution.add(Icon(Icons.close));
      }
    }
    else {
      if(result == true){
        solution.add(Icon(Icons.close));
      }
      else {
        solution.add(Icon(Icons.check));

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              questions.getQuestion(),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(18.0),
            child: FlatButton(
              onPressed: () {
                bool result = questions.getAnswer();
                handleQuestions(button: 'True', result: result);
                setState(() {
                  if(questions.nextQuestion() == true) {
                    solution.clear();
                  }
                });
              },
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(18.0),
            child: FlatButton(
              onPressed: () {
                bool result = questions.getAnswer();
                handleQuestions(button: 'False', result: result);
                setState(() {
                  if(questions.nextQuestion() == true) {
                    solution.clear();
                  }
                });
              },
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: solution,
          ),
        )
      ],
    );
  }
}
