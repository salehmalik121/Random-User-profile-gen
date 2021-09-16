import 'package:flutter/material.dart';

import 'package:profile/screens/AboutThisProfile.dart';
import 'package:profile/screens/HomeScreen.dart';
import 'package:profile/screens/profile.dart';

class GeneratedRoutes {
  Route<dynamic> generatedroute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case '/profile':
        return MaterialPageRoute(builder: (context) => Profile());
      case '/About':
        return MaterialPageRoute(
          builder: (context) => AboutThisProfile(seed: arguments.toString()),
        );

      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        body: Center(child: Text('Error')),
      );
    });
  }
}
