import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import '../SharedLayouts/common_widgets.dart';

class SignUpDesktop extends StatelessWidget {
  const SignUpDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      home: Scaffold(
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
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/background.webp'),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.w900,
                        fontSize: 110,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    width: 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(0, 224, 224, 224),
                          radius: 20,
                          child: Image.asset('assets/google.webp'),
                        ),
                        AnimatedButton(
                          width: 300,
                          onPress: () {},
                          height: 70,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w200,
                          ),
                          text: 'Continue with Google',
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.TOP_CENTER_ROUNDER,
                          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                          borderRadius: 65,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    width: 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(0, 224, 224, 224),
                          radius: 20,
                          child: Image.asset('assets/phone.webp'),
                        ),
                        AnimatedButton(
                          width: 300,
                          onPress: () {},
                          height: 70,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w200,
                          ),
                          text: 'Continue with Phone',
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.TOP_CENTER_ROUNDER,
                          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                          borderRadius: 65,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Or",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 650,
                    child: Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Email Here",
                                labelText: "Email",
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(255, 211, 207, 207)
                                        .withOpacity(0.5),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter Password Here",
                                labelText: "Password",
                                filled: true,
                                fillColor:
                                    const Color.fromARGB(255, 211, 207, 207)
                                        .withOpacity(0.5),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const AnimatedButton(
                    backgroundColor: Color.fromARGB(255, 233, 30, 30),
                    borderRadius: 20,
                    borderWidth: 2,
                    height: 70,
                    borderColor: Colors.blue,
                    width: 600,
                    onPress: null,
                    text: 'Login',
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an Account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/login'),
                        child: const Text('Log In'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



























// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login',
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: AnimatedButton(
//           height: 200,
//           borderColor: Colors.blue,
//           onPress: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const MediaQueryer(),
//               ),
//             );
//           },
//           text: 'Go Back',
//         ),
//         appBar: AppBar(
//           title: const Text(
//             'Test',
//           ),
//         ),
//       ),
//     );
//   }
// }
