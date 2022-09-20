import 'package:flutter/material.dart';
import '../Pages/signup_desktop.dart';
import '../Pages/signup_mobile.dart';

class SignUpQueryer extends StatelessWidget {
  const SignUpQueryer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var count = MediaQuery.of(context).size.width;
        if (count > 1023) {
          return const SignUpDesktop();
        } else {
          return const SignUpMobile();
        }
      },
    );
  }
}
