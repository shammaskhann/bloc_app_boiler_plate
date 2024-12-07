import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:investement_one/presentation/screens/auth/login/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => LoginCubit(),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return Scaffold(
              body: Center(
                child: state.maybeWhen(
                  loading: () => CircularProgressIndicator(),
                  success: () => Text('Success'),
                  error: (message) => Text(message),
                  orElse: () => ElevatedButton(
                    onPressed: () {
                      context.read<LoginCubit>().login();
                    },
                    child: Text('Login'),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
