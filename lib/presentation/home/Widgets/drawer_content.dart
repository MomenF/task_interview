import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_interview/Constants/Routes.dart';
import 'package:task_interview/Constants/colors.dart';
import 'package:task_interview/Constants/utils.dart';
import 'package:task_interview/Logic/Bloc/question_bloc.dart';
import 'package:task_interview/Logic/Repository/repository.dart';

class DrawerWidgetContent extends StatefulWidget {
  const DrawerWidgetContent({Key? key}) : super(key: key);

  @override
  _DrawerWidgetContentState createState() => _DrawerWidgetContentState();
}

class _DrawerWidgetContentState extends State<DrawerWidgetContent> {
  //Todo Variables
  String titleDrawer = 'مؤمن محمود';
  QuestionBloc _questionBloc = QuestionBloc(questionRepository: QuestionRepository());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.mediumSwitch,
        child: ListView(
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: ColorConstant.greenSplash
                  ),
                  child: Center(child: Text(titleDrawer,style: style(context)!.headline5!.copyWith(color: ColorConstant.mediumSwitch),)),
              ),
            ),
            ListTile(
            onTap: (){
              Navigator.pushNamed(context, Routes.questions);
              if (!_questionBloc.state.initState!.success!) {
                print('EnterData');
                BlocProvider.of<QuestionBloc>(context).add(
                    QuestionForDataEvent());
              }
            },
            leading: Icon(Icons.add_task),
            title: Text("اسئلة شائعه",style: style(context)!.headline6,),
            )
          ],
        ));
  }
}
