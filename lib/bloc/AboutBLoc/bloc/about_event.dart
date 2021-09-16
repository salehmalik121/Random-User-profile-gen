part of 'about_bloc.dart';

abstract class AboutEvent extends Equatable {
  const AboutEvent();
}

class CallforAbout extends AboutEvent {
  @override
  List<Object?> get props => [];
}
