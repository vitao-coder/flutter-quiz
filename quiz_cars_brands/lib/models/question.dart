import 'package:meta/meta.dart';
import 'package:quiz_cars_brands/models/anwser.dart';

class Question {
  final int id;
  final String title;
  List<Anwser> anwsers = new List();

  Question({@required this.id, @required this.title, @required anwsers});
}