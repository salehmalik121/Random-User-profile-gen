import 'package:flutter/material.dart';
import 'package:profile/screens/HomeScreen.dart';
import 'package:profile/screens/profile.dart';

class GeneratedRoutes {
  Route<dynamic> generatedroute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case '/profile':
        return MaterialPageRoute(builder: (context) => Profile());

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
