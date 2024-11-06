import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_bloc.dart';

class SubmitButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SubmitButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          minimumSize: const Size(double.infinity, 43),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            context.read<LoginBloc>().add(
                  LoginEvent.submitted(
                    email: emailController.text,
                    password: passwordController.text,
                  ),
                );
          }
        },
        child: const Text('Entrar'),
      ),
    );
  }
}
