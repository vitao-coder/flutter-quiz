import 'package:flutter/material.dart';
import 'package:quiz_cars_brands/models/anwser.dart';
import 'theme/style.dart';
import 'models/question.dart';
import 'models/anwser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Brands Quiz',
      theme: darkTheme(),
      home: MyHomePage(title: 'Car Brands Quiz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   final bool loadingQuestions =false;
  List<Question> questionsList = new List();

  @override
  void initState() {
    questionsList = fetchMockQuestions();
    super.initState();
  }

  List<Question> fetchMockQuestions()
  {
    List<Question> questionsTest = new List();

    List<Anwser> anwserTests = new List();
    Question questionTest = new Question(anwsers: null, id: 1,title: "Questão 1 - BMW");
    Anwser anwser1 = new  Anwser(id: 1,description: "Inglaterra",isCorrect: false,question: questionTest);
    anwserTests.add(anwser1);
    Anwser anwser2 = new  Anwser(id: 2,description: "USA",isCorrect: false,question: questionTest);
    anwserTests.add(anwser2);
    Anwser anwser3 = new  Anwser(id: 3,description: "Alemanha",isCorrect: true,question: questionTest);
    anwserTests.add(anwser3);
    Anwser anwser4 = new  Anwser(id: 4,description: "Japão",isCorrect: false,question: questionTest);
    anwserTests.add(anwser4);
    questionTest.anwsers = anwserTests;
    questionsTest.add(questionTest);

    List<Anwser> anwserTests2 = new List();
    Question questionTest2 = new Question(anwsers: null, id: 1,title: "Questão 2 - Toyota");
    Anwser anwser21 = new  Anwser(id: 1,description: "Inglaterra",isCorrect: false,question: questionTest);
    anwserTests2.add(anwser21);
    Anwser anwser22 = new  Anwser(id: 2,description: "USA",isCorrect: false,question: questionTest);
    anwserTests2.add(anwser22);
    Anwser anwser23 = new  Anwser(id: 3,description: "Alemanha",isCorrect: false,question: questionTest);
    anwserTests2.add(anwser23);
    Anwser anwser24 = new  Anwser(id: 3,description: "Japão",isCorrect: true,question: questionTest);
    anwserTests2.add(anwser24);
    questionTest2.anwsers = anwserTests2;
    questionsTest.add(questionTest2);

    List<Anwser> anwserTests3 = new List();
    Question questionTest3 = new Question(anwsers: null, id: 1,title: "Questão 3 - Mini");
    Anwser anwser31 = new  Anwser(id: 1,description: "Inglaterra",isCorrect: true,question: questionTest);
    anwserTests3.add(anwser31);
    Anwser anwser32 = new  Anwser(id: 2,description: "USA",isCorrect: false,question: questionTest);
    anwserTests3.add(anwser32);
    Anwser anwser33 = new  Anwser(id: 3,description: "Alemanha",isCorrect: false,question: questionTest);
    anwserTests3.add(anwser33);
    Anwser anwser34 = new  Anwser(id: 3,description: "Japão",isCorrect: false,question: questionTest);
    anwserTests3.add(anwser34);
    questionTest3.anwsers = anwserTests3;
    questionsTest.add(questionTest3);

    List<Anwser> anwserTests4 = new List();
    Question questionTest4 = new Question(anwsers: null, id: 1,title: "Questão 4 - General Motors");
    Anwser anwser41 = new  Anwser(id: 1,description: "Inglaterra",isCorrect: false,question: questionTest);
    anwserTests4.add(anwser41);
    Anwser anwser42 = new  Anwser(id: 2,description: "USA",isCorrect: true,question: questionTest);
    anwserTests4.add(anwser42);
    Anwser anwser43 = new  Anwser(id: 3,description: "Alemanha",isCorrect: false,question: questionTest);
    anwserTests4.add(anwser43);
    Anwser anwser44 = new  Anwser(id: 3,description: "Japão",isCorrect: false,question: questionTest);
    anwserTests4.add(anwser44);
    questionTest4.anwsers = anwserTests4;
    questionsTest.add(questionTest4);

    List<Anwser> anwserTests5 = new List();
    Question questionTest5 = new Question(anwsers: null, id: 1,title: "Questão 5 - Rolls-Royce");
    Anwser anwser51 = new  Anwser(id: 1,description: "Inglaterra",isCorrect: true,question: questionTest);
    anwserTests5.add(anwser51);
    Anwser anwser52 = new  Anwser(id: 2,description: "USA",isCorrect: false,question: questionTest);
    anwserTests5.add(anwser52);
    Anwser anwser53 = new  Anwser(id: 3,description: "Alemanha",isCorrect: false,question: questionTest);
    anwserTests5.add(anwser53);
    Anwser anwser54 = new  Anwser(id: 3,description: "Japão",isCorrect: false,question: questionTest);
    anwserTests5.add(anwser54);
    questionTest5.anwsers = anwserTests5;
    questionsTest.add(questionTest5);
    return questionsTest;
  }

  int _indexStep = 0 ;
  int _groupValue = -1;
  int _questionInd = 0;
  int correctQuestions = 0;
  int incorrectQuestions = 0;
  Anwser _selectedAnwser;
  List<Anwser> anwsered = new List();

  void onSelectRadioListChanges(Anwser anwser, int questionIndex)
  {
      setState(() {
        _questionInd = questionIndex;
        _selectedAnwser = anwser;

        if(_indexStep < questionsList.length-1)
        _indexStep++;


        if(anwser.isCorrect) correctQuestions++;
        else incorrectQuestions++;
      });
  }
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
            children: <Widget>[
              _builderSteps(),
            ],
          ),
      )
      ,
    );
  }

  Widget _builderSteps() => Container(
    margin: EdgeInsets.only(top: 1),
    color: Theme.of(context).primaryColor,
    child: Stepper(
      physics: ClampingScrollPhysics(),
      steps: _getQuestionsSteps(this.questionsList),
      currentStep: _indexStep,
      onStepTapped: (index) {
        setState(() {
          _indexStep = index;
        });
      },
      controlsBuilder: (BuildContext context,
              {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
          Container(),
    ),
  );

  List<Step> _getQuestionsSteps(List<Question> questions)
  {
      List<Step> listSteps = new List<Step>();
      for(var i = 0; i < questions.length; i++){
        listSteps.add(new Step(
          title: Text(questions[i].title),
          content: _getAnwsersAndQuestions(questions[i],i)
        ));
      }
      return listSteps;
  }

  Widget _getAnwsersAndQuestions(Question question, int indexQuestion) =>Container(
    margin: EdgeInsets.only(top: 0, left:0),
    color: Theme.of(context).primaryColor,
    child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _getAnwserWidgets(question.anwsers,indexQuestion)]
      )
    );

    Widget _getAnwserWidgets(List<Anwser> anwsers, int questionIndex)
    {
      List<Widget> list = new List<Widget>();

      for(var i = 0; i < anwsers.length; i++){
          list.add(new RadioListTile<Anwser>(
                          title: Text(anwsers[i].description),
                          value: anwsers[i],
                          groupValue: _selectedAnwser,
                          onChanged: (Anwser value) {
                            onSelectRadioListChanges(value,questionIndex);
                          },
                        ));
      }
      return new Column(children: list);
    }
}


