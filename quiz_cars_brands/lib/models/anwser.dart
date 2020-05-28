import 'package:meta/meta.dart';
import 'package:quiz_cars_brands/models/question.dart';

class Anwser {
  final int id;
  final String description;
  final bool isCorrect;
  final Question question;

  Anwser({@required this.id, @required this.description, @required  this.isCorrect, @required this.question});
}