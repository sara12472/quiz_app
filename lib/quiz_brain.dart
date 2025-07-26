import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('The sun rises in the East.', true),
    Question('There are 30 hours in a day.', false),
    Question('Water freezes at 0°C.', true),
    Question('The capital of Germany is Berlin.', true),
    Question('Bats are blind.', false),
    Question('The Great Wall of China is visible from space.', false),
    Question('Light travels faster than sound.', true),
    Question('Penguins can fly.', false),
    Question('Mount Everest is the tallest mountain on Earth.', true),
    Question('The human body has 206 bones.', true),
    Question('Gold is heavier than silver.', true),
    Question('Venus is the closest planet to the Sun.', false),
    Question('An octopus has three hearts.', true),
    Question('Sharks are mammals.', false),
    Question('Lightning never strikes the same place twice.', false),
  ];

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
