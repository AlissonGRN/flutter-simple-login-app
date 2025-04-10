import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'package:simpleloginapp/app/routes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const CustomTextField(label: 'Nome completo'),
            const SizedBox(height: 16),
            const CustomTextField(label: 'E-mail'),
            const SizedBox(height: 16),
            const CustomTextField(label: 'Senha', obscureText: true),
            const SizedBox(height: 16),
            const CustomTextField(label: 'Confirmar Senha', obscureText: true),
            const SizedBox(height: 24),
            CustomButton(
              text: 'Cadastrar',
              onPressed: () => Navigator.pushNamed(context, Routes.home),
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
