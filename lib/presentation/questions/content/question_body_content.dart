import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_interview/Constants/colors.dart';
import 'package:task_interview/Logic/Bloc/question_bloc.dart';
import 'package:task_interview/Logic/Repository/repository.dart';

class BodyContent extends StatefulWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  _BodyContentState createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  //Todo Variable
  QuestionBloc _questionBloc = QuestionBloc(
      questionRepository: QuestionRepository());

  @override
  void initState() {
    // TODO: implement initState
    _questionBloc = BlocProvider.of<QuestionBloc>(context);

    // if (!_questionBloc.state.initState!.success!) {
    //   BlocProvider.of<QuestionBloc>(context).add(QuestionForDataEvent());
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      buildWhen: (context,state){
        return state.initState!.success! ;
      } ,
      builder: (context, state) {
       if (state.initState!.inProgress!){
          print('Test ${state.initState!.success}');

          return CircularProgressIndicator() ;
        } else{
          print(state.initState!.errorMessage.toString());
          print('Test ${state.initState!.success}');

          return Container(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(height: 10.0,);
                },
                separatorBuilder: (context, index) {

                  return buildExpansionQuery(state: state,context: context,index: index);
                },
                itemCount: 10
            ),
          );

        }

      },
    );
  }

  Widget buildExpansionQuery({required BuildContext context ,required QuestionState state,required int index}) {
    print('data is ${state.dataSuccess!.length}');
    var data = state.dataSuccess;
    return ExpansionTile(title: Text(data?[index].question??'00'),

    children: [
      Text(data?[index].answer??'11'),
    ],
    );
  }
}
