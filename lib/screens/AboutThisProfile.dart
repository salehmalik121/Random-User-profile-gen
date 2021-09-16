import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:profile/bloc/AboutBLoc/bloc/about_bloc.dart';

// ignore: must_be_immutable
class AboutThisProfile extends StatefulWidget {
  AboutThisProfile({
    Key? key,
  }) : super(key: key);

  @override
  _AboutThisProfileState createState() => _AboutThisProfileState();
}

class _AboutThisProfileState extends State<AboutThisProfile> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: NewWidget(widget: widget),
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final AboutThisProfile widget;

  @override
  _NewWidgetState createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutBloc, AboutState>(
      builder: (context, state) {
        if (state is LoadingAboutData) {
          return LinearProgressIndicator();
        } else if (state is AboutDataLoaded) {
          return Center(child: Text(state.aboutData!.name.first));
        } else if (state is FailedtoLoadAboutData) {
          return Center(child: Text(state.error));
        }
        throw Text(state.toString());
      },
    );
  }
}
