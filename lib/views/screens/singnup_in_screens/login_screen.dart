import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singn_in_screen.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singup.dart';
import 'package:nike_project/views/screens/splash_screen/splash5.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Login_background.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),
          Container(
            color: Colors.black.withOpacity(0.4),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Bringing Nike Members the best products, \ninspiration and stories in sport.",
                  style: TextStyle(fontSize: 16,color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(children: [ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpEmailScreen()));
                  },
                  child: const Text("Sign up"),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => SignInScreen(),));},
                  child: const Text("Sign in", style: TextStyle(color: Colors.white)),
                ),],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
