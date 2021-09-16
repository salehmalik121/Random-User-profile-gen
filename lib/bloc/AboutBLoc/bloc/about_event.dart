part of 'about_bloc.dart';

abstract class AboutEvent extends Equatable {
  const AboutEvent();
}

class CallforAbout extends AboutEvent {
  String seed;
  CallforAbout({
    required this.seed,
  });

  @override
  List<Object?> get props => [];
}
