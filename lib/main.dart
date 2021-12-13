import 'package:flutter/material.dart';
void main()=>runApp(TrueFalse());

class TrueFalse extends StatelessWidget {
  const TrueFalse({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(backgroundColor: Colors.black,
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
  List<Icon>  addIconsList=[
    Icon(Icons.check,color: Colors.green,),
        Icon(Icons.close,color: Colors.red,),
        Icon(Icons.check,color: Colors.green,),
        Icon(Icons.close,color: Colors.red,),
        Icon(Icons.check,color: Colors.green,),
        Icon(Icons.close,color: Colors.red,),

  ];
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
              child: Text('Your question ',textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(color: Colors.green,
              onPressed: (){
                setState(() {
                  addIconsList.add(Icon(Icons.restaurant_menu,
                color: Colors.orange,),);
                });
              },
              child: Text('True ',textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              onPressed: (){
                setState(() {
                  addIconsList.add(Icon(Icons.restaurant_sharp,
                color: Colors.orange,),);
                });
              },
              child: Text('False ',textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),),
            ),
          ),
        ),
        Row(children: addIconsList),
      ],
     
    );
  }
}