import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task_interview/Logic/Bloc/question_bloc.dart';
import 'package:task_interview/Logic/Repository/repository.dart';

import '../routes_generate.dart';

class IslamicApp extends StatelessWidget {
   IslamicApp({Key? key}) : super(key: key);

  final QuestionRepository questionRepository = QuestionRepository();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<QuestionRepository>.value(value: questionRepository),
      ],
      child:
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=> QuestionBloc(questionRepository: questionRepository))
        ],
        child: GetMaterialApp(
          textDirection: TextDirection.rtl,
          onGenerateRoute: (settings) {
            return RouteGenerator.generateRoute(settings);
          },
        ),
      ),
    );
  }
}
