import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'follow_event.dart';
part 'follow_state.dart';

class FollowBloc extends Bloc<FollowEvent, FollowState> {
  FollowBloc() : super(UnFollowState());

  @override
  Stream<FollowState> mapEventToState(
    FollowEvent event,
  ) async* {
    if (event is FollowAddedEvent) {
      yield FollowingState();
    } else if (event is FollowRemoveEvent) {
      yield UnFollowState();
    }
  }
}
