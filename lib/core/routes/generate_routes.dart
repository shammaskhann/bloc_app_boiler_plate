import 'package:flutter/material.dart';
import 'package:investement_one/presentation/screens/auth/login/login_screen.dart';

class GenerateRoutes {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
