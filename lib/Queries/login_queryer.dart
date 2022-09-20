import 'package:flutter/material.dart';
import 'package:group_5_project/Pages/login_desktop.dart';
import 'package:group_5_project/Pages/login_mobile.dart';

class LoginQueryer extends StatelessWidget {
  const LoginQueryer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var count = MediaQuery.of(context).size.width;
        if (count > 1023) {
          return const LoginDesktop();
        } else {
          return const LoginMobile();
        }
      },
    );
  }
}
