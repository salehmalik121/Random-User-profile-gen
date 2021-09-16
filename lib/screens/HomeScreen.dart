import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/bloc/DataBloc/user_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Vist profile'),
          onPressed: () {
            BlocProvider.of<UserBloc>(context)..add(CallForProfile());
            Navigator.of(context).pushNamed('/profile');
          },
        ),
      ),
    );
  }
}
