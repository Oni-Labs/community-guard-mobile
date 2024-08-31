import 'package:community_guard_mobile/features/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      ),
      body: Column(
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
                  isValid: true,
                  color: Colors.grey,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),
                InputForm(
                  label: "Password",
                  controller: _passwordController,
                  isValid: true,
                  color: Colors.grey,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "Esqueceu sua senha?",
                    style: TextStyle(
                      color: Color(0xFF972DA8),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: ButtonWidget(
                    onPressed: () => context.read<LoginBloc>().add(
                      const LoginEvent.submitted(
                          email: 'gustaf_alfredo@outlook.com',
                          password: 'Gavf#778830'
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Novo Usuário? "),
                    TextButton(
                      child: const Text(
                        "Cadastre-se",
                        style: TextStyle(color: Color(0xFF972DA8)),
                      ),
                      onPressed: () => context.read<LoginBloc>().add(
                        const LoginEvent.registered(
                          name: 'gustaf',
                          email: 'gustaf_alfredo@outlook.com',
                          password: 'Gavf#778830',
                          confirmPassword: 'Gavf#778830',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}