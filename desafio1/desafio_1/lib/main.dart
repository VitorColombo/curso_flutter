import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio 1 - Medium Login Page',
      theme: ThemeData(
        textTheme: GoogleFonts.loraTextTheme(
          Theme.of(context).textTheme, 
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Medium Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            const Image(
              key: ValueKey('imageMedium'),
              image: AssetImage('assets/medium.png'),
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              key: ValueKey('textTitle'),
              'Join Medium.',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
                minimumSize: const Size(100, 55),
                maximumSize: const Size(350, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: const BorderSide(color: Colors.black, width: 1),
                ),
              ),
              onPressed: () {
              },
              child: const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image(image: AssetImage('assets/google.png'), width: 20, height: 20)
                  ),
                  Center(
                    key: ValueKey('signupGoogle'),
                    child: Text('Sign up with Google', style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ],
              ),
            ),            
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
                minimumSize: const Size(100, 55),
                maximumSize: const Size(350, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: const BorderSide(color: Colors.black, width: 1),
                ),
              ),
              onPressed: () {
              },
              child: const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image(image: AssetImage('assets/email.png'), width: 20, height: 20)
                  ),
                  Center(
                    key: ValueKey('signupEmail'),
                    child: Text('Sign up with Email', style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider(              
                  key: ValueKey('dividerLeft'),
                  color: Colors.grey, endIndent: 10, indent: 25,)),
                Text('Or, sign up with', style: TextStyle(color: Colors.grey, fontSize: 14)),
                Expanded(child: Divider(
                  key: ValueKey('dividerRight'),
                  color: Colors.grey, indent: 10, endIndent: 25,)),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                shape: BoxShape.circle,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: SizedBox(
                  key: ValueKey('buttonFacebook'),
                  width: 20,
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/facebook.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                ),
                Text(
                  "Sign in",
                  style: TextStyle(
                    color: Color.fromARGB(255, 96, 160, 100),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'By signing up, you agree to our ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: Color.fromARGB(255, 96, 160, 100),
                        decoration: TextDecoration.underline,
                      )
                    ),
                    TextSpan(
                      text: ' and acknowledge that our ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: Color.fromARGB(255, 96, 160, 100),
                        decoration: TextDecoration.underline,
                      )
                    ),
                    TextSpan(
                      text: ' applies to you.',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}