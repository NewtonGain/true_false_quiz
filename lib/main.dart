import 'package:flutter/material.dart';

void main() => runApp(TrueFalse());

class TrueFalse extends StatelessWidget {
  const TrueFalse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('True False')),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> addIconsList = [];
  int questionsIndex = 0;

  List<String> addQuestionList = [
    'Who is your hero?',
    'If you could live anywhere, where would it be?',
    'What is your biggest fear?',
    'What is your favorite family vacation?',
    'What would you change about yourself if you could?',
    'What really makes you angry?',
    'What motivates you to work hard?',
    'What is your favorite thing about your career?',
    'What is your biggest complaint about your job?',
    'What is your proudest accomplishment?',
  ];
  List<bool> answers = [
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                addQuestionList[questionsIndex],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(children: addIconsList),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                setState(() {
                  if (answers[questionsIndex] == true && answers[i] != null)
                    addIconsList.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  else if (answers[i] != null)
                    addIconsList.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  i++;
                  if (questionsIndex < 10) questionsIndex++;
                });
              },
              child: Text(
                'True ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                setState(() {
                  if (answers[questionsIndex] == true && answers[i] != null)
                    addIconsList.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  else if (answers[i] != null)
                    addIconsList.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  i++;
                  if (questionsIndex < 10) questionsIndex++;
                });
              },
              child: Text(
                'False ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
