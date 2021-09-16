import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:profile/bloc/AboutBLoc/bloc/about_bloc.dart';
import 'package:profile/bloc/DataBloc/user_bloc.dart';
import 'package:profile/routes/Routers.dart';
import 'package:profile/screens/profile.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final route = GeneratedRoutes();

    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(create: (_) => UserBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
