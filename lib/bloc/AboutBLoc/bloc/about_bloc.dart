import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:profile/data/Aboutmodel.dart';
import 'package:profile/services/about.dart';

part 'about_event.dart';
part 'about_state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc() : super(PreCallingState());

  @override
  Stream<AboutState> mapEventToState(
    AboutEvent event,
  ) async* {
    if (event is CallforAbout) {
      yield LoadingAboutData();
      try {
        final aboutdata = Aboutdata(seed: event.seed.toString());
        final about = await aboutdata.getaboutdata();
        yield AboutDataLoaded(aboutData: about);
      } catch (e) {
        yield FailedtoLoadAboutData(error: e.toString());
      }
    }
  }
}
