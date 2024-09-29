import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../../core/widgets/button_widget.dart';
import '../../core/widgets/input_form.dart';
import '../bloc/login_bloc.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Center(
                      child: ClipOval(
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 4.0,
                            ),
                          ),
                          child: SvgPicture.asset(
                            Assets.icons.logo,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  centerTitle: true,
                ),
                backgroundColor: const Color(0xFF972DA8),
                elevation: 0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Bem-vindo",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Crie sua conta",
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 30),
                          _buildInputFields(),
                          _buildCreateAccountButton(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInputFields() {
    return Column(
      children: [
        InputForm(
          label: "Nome",
          controller: _nameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Insira um nome';
            }
            return null;
          },
          color: Colors.grey,
          onChanged: (value) {},
        ),
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
        InputForm(
          label: "Senha",
          controller: _passwordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Insira uma senha';
            }
            return null;
          },
          color: Colors.grey,
          onChanged: (value) {},
        ),
        InputForm(
          label: "Confirmar senha",
          controller: _confirmPasswordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Confirme sua senha';
            }
            if (value != _passwordController.text) {
              return 'As senhas não coincidem';
            }
            return null;
          },
          color: Colors.grey,
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Center(
        child: ButtonWidget(
          text: "Criar conta",
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              context.read<LoginBloc>().add(LoginEvent.registered(
                    name: _nameController.text,
                    email: _emailController.text,
                    password: _passwordController.text,
                    confirmPassword: _confirmPasswordController.text,
                  ));
            }
          },
        ),
      ),
    );
  }
}
