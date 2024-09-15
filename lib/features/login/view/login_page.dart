import 'package:community_guard_mobile/features/widgets/button_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/input_form.dart';
import '../bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isEmailValid = false;
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(0xFF972DA8),
        elevation: 0,
        leading: null,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                color: Color(0xFF972DA8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(60, 60),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 50),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bem-vindo",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Entre para continuar.",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 50),
                  InputForm(
                    label: "Email",
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira um email';
                      }
                      if (EmailValidator.validate(value)) {
                        return 'Insira um email válido';
                      }
                      return null;
                    },
                    color: Colors.grey,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  InputForm(
                    label: "Password",
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira uma senha';
                      }
                      return null;
                    },
                    color: Colors.grey,
                    obscureText: _isPasswordVisible,
                    icon:  _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                    onObscureTap: () => setState(() => _isPasswordVisible = !_isPasswordVisible),
                    onChanged: (value) {},
                  ),
                   Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextButton(
                        child: const Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(
                            color: Color(0xFF972DA8),
                          ),
                        ),
                        onPressed: () => context.push('/login/forget-password-account'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ButtonWidget(
                        text: "Entrar",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<LoginBloc>().add(
                              LoginEvent.submitted(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            );
                          }
                        }
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Novo Usuário? "),
                        TextButton(
                          child: const Text(
                            "Cadastre-se",
                            style: TextStyle(color: Color(0xFF972DA8)),
                          ),
                          onPressed: () => context.push('/login/create-account'),
                        ),
                      ],
                    ),
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