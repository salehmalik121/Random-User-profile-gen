part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => throw UnimplementedError();

  get data => null;
}

class PreDataLoading extends UserState {}

class DataLoading extends UserState {}

// ignore: must_be_immutable
class DataLoaded extends UserState {
  Datamain data;
  DataLoaded({
    required this.data,
  });
}

// ignore: must_be_immutable
class FailedDataLoaded extends UserState {
  String error;
  FailedDataLoaded({
    required this.error,
  });
}
