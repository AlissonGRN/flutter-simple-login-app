import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';

class Routes {
  static const String welcome = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('Rota ${settings.name} não encontrada'),
                ),
              ),
        );
    }
  }
}
