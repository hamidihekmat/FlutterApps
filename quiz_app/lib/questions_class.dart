

class Question {
  List<String> _question = ['The earth is the fourth planet from the sun.',
  'The planet Venus has no moons.',
  'Jupiter is composed mostly of iron.',
  'The sun is a star of average size.',
  'A lunar eclipse occurs when the sun passes'];
  List<bool> _answer = [false, true, false, true, true];
  int _questionNumber = 0;

  bool nextQuestion() {
    bool done = false;
    if (_questionNumber < _question.length -1) {
      _questionNumber++;
    }
    else {
      _questionNumber = 0;
      done = true;
    }
    return done;
  }

  String getQuestion() {
    return _question[_questionNumber];
  }

  bool getAnswer() {
    return _answer[_questionNumber];
  }

}