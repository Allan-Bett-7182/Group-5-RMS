import 'package:flutter/material.dart';
import 'desktop_queried.dart';
import 'mobile_queried.dart';

class MediaQueryer extends StatelessWidget {
  const MediaQueryer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var count = MediaQuery.of(context).size.width;
        if (count > 1023) {
          return const Desktop();
        } else {
          return const Mobile();
        }
      },
    );
  }
}
