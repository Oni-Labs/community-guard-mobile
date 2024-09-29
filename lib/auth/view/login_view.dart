import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../gen/assets.gen.dart';
import '../widgets/container_social_media.dart';
import '../widgets/email_input.dart';
import '../widgets/password_input.dart';
import '../widgets/submit_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: null, backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Icon(Icons.person, size: 150)
                .animate(delay: 2000.ms)
                .fadeIn()
                .moveY(),
            const SizedBox(height: 16),
            Text('Bem vindo', style: Theme.of(context).textTheme.titleMedium),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Entre com seu email e senha para continuar',
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  EmailInput(controller: _emailController),
                  PasswordInput(controller: _passwordController),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () =>
                          context.go('/login/forget-password-account'),
                      child: const Text('Esqueci minha senha'),
                    ),
                  ),
                ],
              ),
            ),
            SubmitButton(
              formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Text('Ou'),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerSocialMedia(
                  imagePath: Assets.icons.facebookOriginal,
                  label: 'Facebook',
                  textColor: Colors.white,
                  fontSize: 15,
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.all(10),
                ),
                const SizedBox(width: 30),
                ContainerSocialMedia(
                  imagePath: Assets.icons.googleOriginal,
                  label: 'Google',
                  textColor: Colors.black,
                  borderColor: Colors.grey[400],
                  fontSize: 15,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(10),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Não tem conta?'),
                  TextButton(
                    onPressed: () {
                      context.go('/login/create-account');
                    },
                    child: const Text('Cadastre-se'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
