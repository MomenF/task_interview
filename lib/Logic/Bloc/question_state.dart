part of 'question_bloc.dart';

 class QuestionState  extends Equatable{
   final BlocStateStatus? initState;
   final List<ModelData>? dataSuccess;

   QuestionState({this.initState, this.dataSuccess,});

   QuestionState copyWith({
     BlocStateStatus? initState,
     List<ModelData>? dataSuccess
 }){
     return QuestionState(
     initState : initState??this.initState,
     dataSuccess: dataSuccess??this.dataSuccess,
     );
   }

   QuestionState initial(){
     return QuestionState(
       initState : BlocStateStatus().initial(),
       dataSuccess: dataSuccess,
     );
   }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}


