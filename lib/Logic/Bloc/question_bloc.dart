import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:task_interview/Logic/Bloc/status.dart';
import 'package:task_interview/Logic/Repository/repository.dart';
import 'package:task_interview/Logic/model/model.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionRepository questionRepository;
  QuestionBloc({required QuestionRepository questionRepository})
      : assert(questionRepository != null),
        questionRepository =questionRepository,
        super(QuestionState().initial());

 // {
 //    on<QuestionEvent>((event, emit) {
 //  on<QuestionForDataEvent>((event, emit) => getAllQueryData());
 //
 //    });


  Stream<QuestionState> mapEventToState(QuestionEvent event) async*{
    if(event is QuestionForDataEvent ){
      print("Try Calling .. Event");
    yield* _getAllQueryData();
    }
  }
  Stream<QuestionState> _getAllQueryData() async*{
    try {
      print("Enter State get");
      List<ModelData> allData = await questionRepository.getAllDataRepository();
      print('the data is ${allData[0].question} and length ${allData.length}');
       state.copyWith(
        initState: state.initState!.copyWith(
          errorMessage: "",
          failure: false,
          inProgress: true,
          success: false
        )
      );
      // List<ModelData> allData = await questionRepository.getAllDataRepository();

      yield state.copyWith(initState: state.initState!.copyWith(
        success: true,
        inProgress: false,
        failure: false,
        errorMessage: ""
      ),
      dataSuccess:allData
      );
    } catch(error){
      yield state.copyWith(
        initState:
        state.initState!.copyWith(failure: true,
            inProgress: false,
            success: false,
            errorMessage: "${error}"
        ),
      );
    }
  }
}
