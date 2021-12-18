import 'questions.dart';

class QuestionsBrain {
  int _questionIndex = 0;
  List<Questions> _questionBank = [
    Questions(
      'Prince Harry is taller than Prince William',

      true,
    ),
    Questions(
      'The star sign Aquarius is represented by a tiger',

      false,
    ),
    Questions(
      'Meryl Streep has won two Academy Awards',
      false,
    ),
  
    
    Questions(
      'In the animation film “Finding Nemo,” the main protagonist is a pufferfish. ',
      false,
    ),Questions(
      '',
      false,
    ),Questions(
      '',
      false,
    ),Questions(
      '',
      false,
    ),Questions(
      '',
      false,
    ),Questions(
      '',
      false,
    ),Questions(
      '',
      false,
    ),
    
    
  ];

  void nextPage() {
    if (_questionIndex < _questionBank.length - 1) {
      _questionIndex++;
    }
  }

  bool isFinished() {
    if (_questionIndex >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionIndex].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionIndex].questionAnswer;
  }

  void reset() {
    _questionIndex = 0;
  }
}