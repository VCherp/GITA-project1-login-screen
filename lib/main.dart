import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      home: InstagramLoginScreen(),
    ),
  );
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email Text Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16.0),
            // Password Text Field
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 20.0),
            // Login Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramLoginScreen extends StatelessWidget {
  const InstagramLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    child:
                        SvgPicture.asset('assets/vector/Instagram_logo.svg')),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  'Sing up to see photos and videos'
                  '\n from your friends.',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: GoogleFonts.rubik(
                    color: Colors.black45,
                    textStyle: const TextStyle(fontSize: 20),
                    fontWeight: FontWeight.bold,
                  ),
                  // TextStyle(
                  //     fontSize: 22,
                  //     color: Colors.black54,
                  //     fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 22,
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text(
                //     'Log in with Facebook',
                //     style: TextStyle(color: Colors.white),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.blue,
                //     shape: OutlinedShape
                //   ),
                // ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Log in with Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'OR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),

                _textFieldBuilder('Mobile number or email address'),
                _textFieldBuilder('Password'),
                _textFieldBuilder('Full Name'),
                _textFieldBuilder('Username'),

                const SizedBox(
                  height: 20,
                ),

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'People who use our service may have uploaded\n'
                          'your contact information to Instagram. ',
                      style: const TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        _textSpanLinkBuilder('Learn\n more', () {}),
                      ]),
                ),

                const SizedBox(
                  height: 22,
                ),

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'By signing up, you agree to our ',
                      style: const TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        _textSpanLinkBuilder('Terms, Privacy\n Policy', () {}),
                        _textSpanTextBuilder(' and '),
                        _textSpanLinkBuilder('Cookies Policy', () {}),
                        _textSpanTextBuilder('.'),
                      ]),
                ),

                const SizedBox(
                  height: 22,
                ),

                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                    disabledBackgroundColor: Colors.lightBlueAccent,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: const Text(
                    'Sing Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextSpan _textSpanTextBuilder(String text) => TextSpan(
      text: text,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black38,
        fontWeight: FontWeight.bold,
      ),
    );

TextSpan _textSpanLinkBuilder(String text, Function f) => TextSpan(
      text: text,
      style: const TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(80, 109, 133, 1),
        fontWeight: FontWeight.bold,
      ),
      recognizer: TapGestureRecognizer()..onTap = () {},
    );

Widget _textFieldBuilder(String text) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder:
              // OutlineInputBorder(borderSide: BorderSide(),),
              const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black12),
          ),
        ),
      ),
    );
