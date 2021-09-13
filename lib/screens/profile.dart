import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/bloc/DataBloc/user_bloc.dart';
import 'package:profile/widgets/profile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is DataLoading) {
                return CircularProgressIndicator();
              } else if (state is DataLoaded) {
                return profile(state.data);
              } else if (state is FailedDataLoaded) {
                return Text('error');
              }
              throw ErrorDescription('error');
            },
          ),
        ));
  }
}
