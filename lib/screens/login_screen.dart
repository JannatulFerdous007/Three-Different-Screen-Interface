import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import '../provider/auth_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthProvider>().login();

            context.go("/home");
          },

          child: Text("Login"),
        ),
      ),
    );
  }
}
