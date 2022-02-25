import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_interview/Constants/colors.dart';
import 'package:task_interview/presentation/islamic_app.dart';
import 'Constants/themes.dart';
import 'Logic/Repository/repository.dart';
import 'Services/api_services.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const  MyApp({Key? key}) : super(key: key);

   // CharactersRepository charactersRepository = CharactersRepository( CharactersWebServices());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // textDirection: TextDirection.rtl,
        title: 'Flutter Demo',
      theme: Themes.data(),
      home: IslamicApp()
    );



  }
}
