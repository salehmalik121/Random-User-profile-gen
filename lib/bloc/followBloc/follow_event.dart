part of 'follow_bloc.dart';

abstract class FollowEvent extends Equatable {
  const FollowEvent();
}

class FollowAddedEvent extends FollowEvent {
  @override
  List<Object?> get props => [];
}

class FollowRemoveEvent extends FollowEvent {
  @override
  List<Object?> get props => [];
}
