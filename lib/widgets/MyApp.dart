import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/bloc/DataBloc/user_bloc.dart';
import 'package:profile/routes/Routers.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final route = GeneratedRoutes();
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.grey[800],
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
        initialRoute: '/',
        onGenerateRoute: route.generatedroute,
      ),
    );
  }
}
