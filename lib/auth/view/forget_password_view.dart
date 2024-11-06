import 'package:community_guard_mobile/core/router.dart';
import 'package:community_guard_mobile/core/widgets/button_widget.dart';
import 'package:community_guard_mobile/core/widgets/input_form.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../bloc/login_bloc.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc()..add(const LoginEvent.started()),
      child: const ForgetPasswordView(),
    );
  }
}

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final _emailController = TextEditingController();
  final _tokenController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Widget forgetPasswordForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Insira seu email para receber instruções",
          style: TextStyle(fontSize: 18),
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
      ],
    );
  }

  Widget sentTokenForm() {
    return Column(
      children: [
        const Text(
          "Insira o token para substituir a senha",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 30),
        InputForm(
          label: "Token",
          controller: _emailController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Insira um token';
            }
            return null;
          },
          color: Colors.grey,
          onChanged: (value) {},
        ),
        InputForm(
          label: "Nova senha",
          controller: _emailController,
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
          label: "Confirmar nova senha",
          controller: _emailController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Confirme sua senha';
            }
            return null;
          },
          color: Colors.grey,
          onChanged: (value) {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const loadingWave = Padding(
      padding: EdgeInsets.all(30.0),
      child: SpinKitWave(
        color: Colors.deepPurple,
        size: 50.0,
      ),
    );

    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isLogged) {
          const FeedRoute().go(context);
        }
        if (state.tokenStatus is ConfirmedToken) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.success,
            text: 'Senha alterada com sucesso!',
            title: 'Sucesso',
            disableBackBtn: true,
            confirmBtnText: 'Continuar',
            onConfirmBtnTap: () => const LoginRoute().go(context),
          );
        }
        if (state.tokenStatus is Failure) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            text: 'Erro ao tentar alterar a senha',
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                context.pop();
              },
            ),
            title: const Text(
              'Esqueci minha senha',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Form(
            key: _formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recuperar senha",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      child: switch (state.tokenStatus) {
                        InitialToken() => forgetPasswordForm(),
                        SendingToken() => loadingWave,
                        SentToken() => sentTokenForm(),
                        ConfirmingToken() => loadingWave,
                        _ => forgetPasswordForm(),
                      },
                    ),
                    if (state.tokenStatus is! ConfirmingToken &&
                        state.tokenStatus is! SendingToken)
                      ButtonWidget(
                        text: "Enviar Token",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            switch (state.tokenStatus) {
                              case InitialToken():
                                context.read<LoginBloc>().add(
                                    LoginEvent.eventSentToken(
                                        email: _emailController.text));
                                break;
                              case SendingToken():
                                null;
                                break;
                              case SentToken():
                                context.read<LoginBloc>().add(
                                      LoginEvent.resetedPassword(
                                        token: _tokenController.text,
                                        password: _passwordController.text,
                                        confirmPassword:
                                            _confirmPasswordController.text,
                                      ),
                                    );
                                break;
                              default:
                                null;
                            }
                          }
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
