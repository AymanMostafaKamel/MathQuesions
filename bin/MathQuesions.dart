import 'dart:io';

class MathQuestion {
  String question;
  double answer;
  MathQuestion({
    required this.question,
    required this.answer,
  });
}

getAnswer(String msg) {
  print('Q// $msg ?');
  var answer = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return answer;
}

void main() {
  List<MathQuestion> questions = [
    MathQuestion(question: '4 + 5', answer: 9.0),
    MathQuestion(question: '5 + 5', answer: 10.0),
    MathQuestion(question: '4 + 3', answer: 7.0),
    MathQuestion(question: '6 + 5', answer: 11.0),
  ];
  for (var item in questions) {
    if (questions.indexOf(item) == 0) {
      print('================================');
    }
    var userAnswer = getAnswer(item.question);
    print('Your answer is $userAnswer');
    if (userAnswer == item.answer) {
      print('Answer is correct!');
    } else {
      print('Incorrect, The answer was ${item.answer} .');
    }
    print('================================');
  }
}
