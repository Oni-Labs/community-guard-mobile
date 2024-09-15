import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/input_form.dart';
import '../bloc/login_bloc.dart';

class ForgetPasswordAccount extends StatefulWidget {
  const ForgetPasswordAccount({super.key});

  @override
  State<ForgetPasswordAccount> createState() => _ForgetPasswordAccountState();
}

class _ForgetPasswordAccountState extends State<ForgetPasswordAccount> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isLogged) {
          context.pop('/home');
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: const Color(0xFF972DA8),
            elevation: 0,
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
                        "Esqueci minha senha",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Insira seu email para receber instruções",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 30),
                      InputForm(
                        label: "Email",
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insira um email';
                          }
                          if (!EmailValidator.validate(value)) {
                            return 'Insira um email válido';
                          }
                          return null;
                        },
                        color: Colors.grey,
                        onChanged: (value) {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Center(
                          child: ButtonWidget(
                              text: "Enviar Token",
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {}
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
