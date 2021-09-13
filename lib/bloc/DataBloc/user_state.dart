part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class PreDataLoading extends UserState {}

class DataLoading extends UserState {}

class DataLoaded extends UserState {
  Results data;
  DataLoaded({
    required this.data,
  });
}

class FailedDataLoaded extends UserState {
  String error;
  FailedDataLoaded({
    required this.error,
  });
}
