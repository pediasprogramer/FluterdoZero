class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer);

  static List<Question> getQuestionsList() {
    List<Question> questions = [];

    questions.add(Question(
      'Oque é Flutter?',
      'é um smartphone',
      'um Sistema operacional',
      'é um SDK de desenvolvimento de multiplataforma',
      'Uma linguagem de programação',
      3,
    ));

    questions.add(
      Question(
        'Qual é a linguagem  de programação usada pelo Flutter',
        'Dart',
        'Java',
        'JavaScript',
        'Go',
        1,
      ),
    );

    questions.add(
      Question(
        'quem nasceu primeiro',
        'React',
        'Kotlin',
        'java',
        'Flutter',
        3,
      ),
    );

    return questions;
  }
}
