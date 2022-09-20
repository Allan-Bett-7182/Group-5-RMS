import 'package:flutter/material.dart';
import 'package:group_5_project/Queries/login_queryer.dart';
import 'Pages/home.dart';
import 'Queries/signup_queryer.dart';

void main() {
  runApp(
    const Main(),
  );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const LoginQueryer(),
        '/signup': (context) => const SignUpQueryer(),
      },
    );
  }
}
