// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:getwidget/getwidget.dart';
import 'package:group_5_project/SharedLayouts/common_widgets.dart';
import 'package:number_slide_animation/number_slide_animation.dart';
import 'package:url_launcher/url_launcher.dart';

Container listViewContent(
  WrapAlignment alignmentQuery,
  //Widget rowOrWrap,
  CrossAxisAlignment crossAxisAlignment,
  num num,
  double height,
  int crossAxisCount,
) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/background.webp'),
        fit: BoxFit.cover,
      ),
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Hi, are you hungry?',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.w900,
              fontSize: 110,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Welcome to Group 5's restaurant ",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'DancingScript',
              fontSize: 65,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 30,
            alignment: alignmentQuery,
            children: [
              outlinedButton(
                onPressed: watchVideo,
                label: const Text('Watch Video'),
                icon: const Icon(
                  Icons.play_circle,
                  size: 40.0,
                ),
                backgroundColor: const Color.fromARGB(255, 255, 0, 0),
              ),
              outlinedButton(
                onPressed: () {},
                label: const Text('Book a Table'),
                icon: const Icon(
                  Icons.table_bar,
                  size: 40.0,
                ),
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          Container(
            color: const Color.fromARGB(180, 0, 0, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'About Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 90,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: SizedBox(
                        width: 500,
                        height: 600,
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
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          'Ex dolor uis consectetur. Fugiat ut \n✔️ excepteur esse elit qui exercitation  incididunt cillum incididunt magna Ex dolor uis consectetur. Fugiat ut',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          const Center(
            child: Text(
              'Gallery',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 90,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            '✔️ Ex dolor reprehenderit laborum ex nulla Lorem est Lorem sint amet quis consectetur. Fugiat ut aliquip pariatur tempor culpa velit nisi',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          CarouselSlider(
            items: [
              Image.asset('assets/Carousel1.webp'),
              Image.asset('assets/Carousel2.webp'),
              Image.asset('assets/Carousel3.webp'),
              Image.asset('assets/Carousel4.webp'),
              Image.asset('assets/Carousel5.webp'),
            ],
            options: CarouselOptions(
              autoPlayCurve: Curves.easeIn,
              height: height,
              viewportFraction: 0.7,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            color: const Color.fromARGB(180, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Testimonials',
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 80,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  child: GFCarousel(
                    viewportFraction: num,
                    height: 450,
                    enlargeMainPage: true,
                    autoPlayCurve: Curves.decelerate,
                    autoPlay: true,
                    items: [
                      SizedBox(
                        width: 500,
                        child: GFCard(
                          color: const Color.fromARGB(0, 255, 255, 255),
                          title: GFListTile(
                            avatar: const GFAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/testimonials1.webp'),
                            ),
                            title: const Text(
                              'Jane Doe',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subTitle: Row(
                              children: const [
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_half_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          content: const Text(
                            "Lorem ipsum duis dolor aliquip voluptate non commodo laborum elit consequat id labore. ",
                            style: TextStyle(
                              fontFamily: 'DancingScript',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: GFCard(
                          color: const Color.fromARGB(0, 255, 255, 255),
                          title: GFListTile(
                            avatar: const GFAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/testimonials2.webp'),
                            ),
                            title: const Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subTitle: Row(
                              children: const [
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          content: const Text(
                            "Lorem ipsum duis dolor aliquip voluptate non commodo laborum elit consequat id labore. ",
                            style: TextStyle(
                              fontFamily: 'DancingScript',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: GFCard(
                          color: const Color.fromARGB(0, 255, 255, 255),
                          title: GFListTile(
                            avatar: const GFAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/testimonials3.webp'),
                            ),
                            title: const Text(
                              'Jack Doe',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subTitle: Row(
                              children: const [
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_half_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          content: const Text(
                            "Lorem ipsum duis dolor aliquip voluptate non commodo laborum elit consequat id labore. ",
                            style: TextStyle(
                              fontFamily: 'DancingScript',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        child: GFCard(
                          color: const Color.fromARGB(0, 255, 255, 255),
                          title: GFListTile(
                            avatar: const GFAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/testimonials4.webp'),
                            ),
                            title: const Text(
                              'Jin Doe',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subTitle: Row(
                              children: const [
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_sharp,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_border_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          content: const Text(
                            "Lorem ipsum duis dolor aliquip voluptate non commodo laborum elit consequat id labore. ",
                            style: TextStyle(
                              fontFamily: 'DancingScript',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 100,
                  runSpacing: 50,
                  children: [
                    Column(
                      children: [
                        NumberSlideAnimation(
                          number: "5267",
                          duration: const Duration(seconds: 20),
                          curve: Curves.decelerate,
                          textStyle: const TextStyle(
                            fontFamily: 'DancingScript',
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Clients served',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 148, 148, 148),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        NumberSlideAnimation(
                          number: "5193",
                          duration: const Duration(seconds: 20),
                          curve: Curves.decelerate,
                          textStyle: const TextStyle(
                            fontFamily: 'DancingScript',
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Satisfied Clients',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 148, 148, 148),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        NumberSlideAnimation(
                          number: "47",
                          duration: const Duration(seconds: 20),
                          curve: Curves.decelerate,
                          textStyle: const TextStyle(
                            fontFamily: 'DancingScript',
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Employees',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 148, 148, 148),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        NumberSlideAnimation(
                          number: "12",
                          duration: const Duration(seconds: 20),
                          curve: Curves.decelerate,
                          textStyle: const TextStyle(
                            fontFamily: 'DancingScript',
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Awards Won',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 148, 148, 148),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          const Center(
            child: Text(
              'Menu',
              style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 90,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GridView.count(
            mainAxisSpacing: 50,
            crossAxisSpacing: 50,
            crossAxisCount: crossAxisCount,
            shrinkWrap: true,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Flexible(
                      child: GFCard(
                        boxFit: BoxFit.fitHeight,
                        showOverlayImage: true,
                        imageOverlay: AssetImage(
                          'assets/Carousel1.webp',
                        ),
                      ),
                    ),
                    AnimatedButton(
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                      animationDuration: Duration(milliseconds: 800),
                      animatedOn: AnimatedOn.onHover,
                      onPress: null,
                      width: 110,
                      text: 'Order',
                      isReverse: true,
                      selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                      selectedBackgroundColor: Colors.black,
                      transitionType: TransitionType.TOP_CENTER_ROUNDER,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      borderColor: Color.fromARGB(255, 255, 187, 0),
                      borderRadius: 50,
                      borderWidth: 2,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Flexible(
                      child: GFCard(
                        boxFit: BoxFit.fitHeight,
                        showOverlayImage: true,
                        imageOverlay: AssetImage(
                          'assets/image.webp',
                        ),
                      ),
                    ),
                    AnimatedButton(
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                      animationDuration: Duration(milliseconds: 800),
                      animatedOn: AnimatedOn.onHover,
                      onPress: null,
                      width: 110,
                      text: 'Order',
                      isReverse: true,
                      selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                      selectedBackgroundColor: Colors.black,
                      transitionType: TransitionType.TOP_CENTER_ROUNDER,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      borderColor: Color.fromARGB(255, 255, 187, 0),
                      borderRadius: 50,
                      borderWidth: 2,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Flexible(
                      child: GFCard(
                        boxFit: BoxFit.fitHeight,
                        showOverlayImage: true,
                        imageOverlay: AssetImage(
                          'assets/Carousel2.webp',
                        ),
                      ),
                    ),
                    AnimatedButton(
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                      animationDuration: Duration(milliseconds: 800),
                      animatedOn: AnimatedOn.onHover,
                      onPress: null,
                      width: 110,
                      text: 'Order',
                      isReverse: true,
                      selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                      selectedBackgroundColor: Colors.black,
                      transitionType: TransitionType.TOP_CENTER_ROUNDER,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      borderColor: Color.fromARGB(255, 255, 187, 0),
                      borderRadius: 50,
                      borderWidth: 2,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Flexible(
                      child: GFCard(
                        boxFit: BoxFit.fitHeight,
                        showOverlayImage: true,
                        imageOverlay: AssetImage(
                          'assets/Carousel3.webp',
                        ),
                      ),
                    ),
                    AnimatedButton(
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                      animationDuration: Duration(milliseconds: 800),
                      animatedOn: AnimatedOn.onHover,
                      onPress: null,
                      width: 110,
                      text: 'Order',
                      isReverse: true,
                      selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                      selectedBackgroundColor: Colors.black,
                      transitionType: TransitionType.TOP_CENTER_ROUNDER,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      borderColor: Color.fromARGB(255, 255, 187, 0),
                      borderRadius: 50,
                      borderWidth: 2,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Flexible(
                      child: GFCard(
                        boxFit: BoxFit.fitHeight,
                        showOverlayImage: true,
                        imageOverlay: AssetImage(
                          'assets/Carousel4.webp',
                        ),
                      ),
                    ),
                    AnimatedButton(
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                      animationDuration: Duration(milliseconds: 800),
                      animatedOn: AnimatedOn.onHover,
                      onPress: null,
                      width: 110,
                      text: 'Order',
                      isReverse: true,
                      selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                      selectedBackgroundColor: Colors.black,
                      transitionType: TransitionType.TOP_CENTER_ROUNDER,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      borderColor: Color.fromARGB(255, 255, 187, 0),
                      borderRadius: 50,
                      borderWidth: 2,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Flexible(
                      child: GFCard(
                        boxFit: BoxFit.fitHeight,
                        showOverlayImage: true,
                        imageOverlay: AssetImage(
                          'assets/Carousel5.webp',
                        ),
                      ),
                    ),
                    AnimatedButton(
                      textStyle: TextStyle(
                        fontSize: 30,
                      ),
                      animationDuration: Duration(milliseconds: 800),
                      animatedOn: AnimatedOn.onHover,
                      onPress: null,
                      width: 110,
                      text: 'Order',
                      isReverse: true,
                      selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                      selectedBackgroundColor: Colors.black,
                      transitionType: TransitionType.TOP_CENTER_ROUNDER,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      borderColor: Color.fromARGB(255, 255, 187, 0),
                      borderRadius: 50,
                      borderWidth: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          Container(
            color: const Color.fromARGB(180, 0, 0, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Contact Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 80,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 500,
                        height: 500,
                        child: HtmlWidget(
                          '''<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.91477127143!2d-74.11976341808828!3d40.697403441901386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a9b3117469%3A0xd134e199a405a163!2sEmpire%20State%20Building!5e0!3m2!1sen!2ske!4v1663097705358!5m2!1sen!2ske" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>''',
                          isSelectable: true,
                          onErrorBuilder: (context, element, error) =>
                              Text('$element error: $error'),
                          onLoadingBuilder:
                              (context, element, loadingProgress) =>
                                  const CircularProgressIndicator(),
                          renderMode: RenderMode.column,
                          textStyle: const TextStyle(fontSize: 14),
                          // ignore: deprecated_member_use
                          webView: true,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(
                        child: Text(
                          'Ex dolor uis consectetur. Fugiat ut \n✔️ excepteur esse elit qui exercitation  incididunt cillum incididunt magna Ex dolor uis consectetur. Fugiat ut',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/logo.webp',
                      scale: 3,
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '\n✔️Link 1',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      '\n✔️Link 2',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '\n✔️Link 3',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      '\n✔️ Link 4',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            transformAlignment: Alignment.center,
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.black,
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Center(
                  child: Text(
                    '©2022 Group 5. All rights reserved.',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

watchVideo() async {
  var url = Uri.parse("https://youtu.be/dQw4w9WgXcQ");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
