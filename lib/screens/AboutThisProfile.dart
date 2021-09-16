import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:profile/bloc/AboutBLoc/bloc/about_bloc.dart';

// ignore: must_be_immutable
class AboutThisProfile extends StatefulWidget {
  String seed;
  AboutThisProfile({
    Key? key,
    required this.seed,
  }) : super(key: key);

  @override
  _AboutThisProfileState createState() => _AboutThisProfileState();
}

class _AboutThisProfileState extends State<AboutThisProfile> {
  Widget build(BuildContext context) {
    return BlocProvider<AboutBloc>(
      create: (_) => AboutBloc(widget.seed),
      child: AboutScafold(
        seed: widget.seed,
      ),
    );
  }
}

class AboutScafold extends StatefulWidget {
  String seed;
  AboutScafold({
    Key? key,
    required this.seed,
  }) : super(key: key);

  @override
  _AboutScafoldState createState() => _AboutScafoldState();
}

class _AboutScafoldState extends State<AboutScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<AboutBloc, AboutState>(
        builder: (context, state) {
          if (state is LoadingAboutData) {
            return LinearProgressIndicator();
          } else if (state is AboutDataLoaded) {
            return Center(child: Text(state.aboutData.name.first));
          } else if (state is FailedtoLoadAboutData) {
            return Center(child: Text(state.error));
          }
          throw Text(state.toString());
        },
      ),
    );
  }
}
