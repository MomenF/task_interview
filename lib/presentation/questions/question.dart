import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'content/question_body_content.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اسئلة شائعه'),
      ),
      body: BodyContent(),
    );
  }
}
