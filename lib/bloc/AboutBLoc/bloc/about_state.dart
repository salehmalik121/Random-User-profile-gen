part of 'about_bloc.dart';

abstract class AboutState extends Equatable {
  const AboutState();
}

class PreCallingState extends AboutState {
  @override
  List<Object?> get props => [];
}

class LoadingAboutData extends AboutState {
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class AboutDataLoaded extends AboutState {
  AboutData? aboutData;
  AboutDataLoaded({
    this.aboutData,
  });
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class FailedtoLoadAboutData extends AboutState {
  String error;
  FailedtoLoadAboutData({
    required this.error,
  });
  @override
  List<Object?> get props => [];
}
