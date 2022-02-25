import 'package:equatable/equatable.dart';

class BlocStateStatus extends Equatable {
  final bool? inProgress;
  final bool? success;
  final bool? failure;
  final String? errorMessage;

  const BlocStateStatus({
    this.inProgress,
    this.success,
    this.failure,
    this.errorMessage,
  });

  BlocStateStatus copyWith({
    required bool inProgress,
    required bool success,
    required bool failure,
    required String errorMessage,
  }) {
    return BlocStateStatus(
      errorMessage: errorMessage ,
      failure: failure ,
      inProgress: inProgress ,
      success: success ,
    );
  }

  BlocStateStatus initial() {
    return const BlocStateStatus(
      errorMessage: '',
      failure: false,
      inProgress: false,
      success: false,
    );
  }

  @override
  List<Object?> get props => [
    inProgress,
    success,
    failure,
    errorMessage,
  ];
}
