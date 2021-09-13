import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:profile/data/models.dart';
import 'package:profile/services/Getdata.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final profiledata = GetData();
  UserBloc() : super(PreDataLoading());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is CallForProfile) {
      yield DataLoading();
      try {
        final newData = await profiledata.getData();
        yield DataLoaded(data: newData);
      } catch (e) {
        yield FailedDataLoaded(error: e.toString());
      }
    }
  }
}
