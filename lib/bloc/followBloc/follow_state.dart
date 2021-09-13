part of 'follow_bloc.dart';

abstract class FollowState extends Equatable {
  const FollowState();
}

class FollowingState extends FollowState {
  @override
  List<Object?> get props => [];
}

class UnFollowState extends FollowState {
  @override
  List<Object?> get props => [];
}
