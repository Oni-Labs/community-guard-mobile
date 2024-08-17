import 'package:community_surveillance/features/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/input_form.dart';
import '../bloc/auth_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthBloc(),
      child: const AuthView(),
    );
  }
}

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
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
                    child:
                        ButtonWidget(onPressed: () => context.push('/feed'))),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Novo Usuário? "),
                    Text(
                      "Cadastre-se",
                      style: TextStyle(color: Color(0xFF972DA8)),
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
