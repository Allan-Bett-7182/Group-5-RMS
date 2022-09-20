// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../SharedLayouts/common_widgets.dart';
import '../SharedLayouts/content.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        endDrawer: Drawer(
          backgroundColor: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Mobile(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Icon(
                    Icons.cancel_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              const DrawerHeader(
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  radius: 70,
                  backgroundImage: AssetImage(
                    'assets/logo.webp',
                  ),
                ),
              ),
              animatedButton('About'),
              const SizedBox(
                height: 20,
              ),
              animatedButton('Gallery'),
              const SizedBox(
                height: 20,
              ),
              animatedButton('Menu'),
              const SizedBox(
                height: 20,
              ),
              animatedButton('Contact'),
              const SizedBox(
                height: 20,
              ),
              animatedButton(
                'Login',
                onPressed: () => Navigator.pushNamed(context, '/login'),
                borderColor: const Color.fromARGB(255, 255, 200, 0),
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 60,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              100,
            ),
          ),
          backgroundColor: Colors.black,
          leading: const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            radius: 2,
            backgroundImage: AssetImage(
              'assets/logo.webp',
            ),
          ),
          title: titleButton(),
        ),
        body: listViewContent(
          WrapAlignment.end,
          CrossAxisAlignment.center,
          0.8,
          300,
          2,
        ),
      ),
    );
  }
}

Widget flexible() {
  return Flexible(
    child: Column(
      children: [
        Flexible(
          child: GFCard(
            height: 550,
            boxFit: BoxFit.cover,
            showOverlayImage: true,
            imageOverlay: AssetImage(
              'assets/image.webp',
            ),
            buttonBar: GFButtonBar(
              children: <Widget>[
                Center(
                  heightFactor: 2.5,
                  child: CircleAvatar(
                    minRadius: 20,
                    maxRadius: 100,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.restaurant_menu_outlined,
                      size: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Text(
            'Ex dolor uis consectetur. Fugiat ut \n✔️ excepteur esse elit qui exercitation  incididunt cillum incididunt magna \n✔️ in dolor velit quis esse culpa consequat laboris consectetur fugiat. Eiusmod id qui veniam laborum deserunt est.',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ],
    ),
  );
}
