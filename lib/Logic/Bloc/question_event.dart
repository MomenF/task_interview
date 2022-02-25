part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
    QuestionEvent(){
      print('Enter Called');
    }
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class QuestionForDataEvent extends QuestionEvent{



}


