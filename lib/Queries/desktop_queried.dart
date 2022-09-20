import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../SharedLayouts/common_widgets.dart';
import '../SharedLayouts/content.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
            60,
          ),
          child: AppBar(
            actions: [
              ButtonBar(
                children: [
                  animatedButton('About'),
                  animatedButton('Gallery'),
                  animatedButton('Menu'),
                  animatedButton('Contact'),
                  const SizedBox(
                    width: 10,
                  ),
                  animatedButton(
                    'Login',
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    borderColor: const Color.fromARGB(255, 255, 200, 0),
                  ),
                ],
              ),
            ],
            title: titleButton(),
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
          ),
        ),
        body: listViewContent(
            WrapAlignment.start, CrossAxisAlignment.start, 0.3, 700, 3),
      ),
    );
  }
}

Widget row() {
  return Row(
    children: const [
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
  );
}
