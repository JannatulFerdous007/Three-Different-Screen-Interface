import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import '../provider/auth_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(
              onPressed: () {
                context.go("/profile");
              },

              child: Text("Profile"),
            ),

            ElevatedButton(
              onPressed: () {
                context.read<AuthProvider>().logout();

                context.go("/login");
              },

              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
