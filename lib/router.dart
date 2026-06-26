import 'package:go_router/go_router.dart';

import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/login",

  routes: [
    GoRoute(
      path: "/login",

      builder: (context, state) {
        return LoginScreen();
      },
    ),

    GoRoute(
      path: "/home",

      builder: (context, state) {
        return HomeScreen();
      },
    ),

    GoRoute(
      path: "/profile",

      builder: (context, state) {
        return ProfileScreen();
      },
    ),
  ],
);
