import 'package:flutter/material.dart';
import 'package:simpleloginapp/app/routes.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CustomTextField(label: 'E-mail'),
            const SizedBox(height: 16),
            const CustomTextField(label: 'Senha', obscureText: true),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Entrar',
              onPressed: () => Navigator.pushNamed(context, Routes.home),
            ),
          ],
        ),
      ),
    );
  }
}
