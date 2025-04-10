import 'package:flutter/material.dart';
import '../app/routes.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bem-vindo!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: 'Login',
              onPressed: () => Navigator.pushNamed(context, Routes.login),
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'Cadastro',
              onPressed: () => Navigator.pushNamed(context, Routes.signup),
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
