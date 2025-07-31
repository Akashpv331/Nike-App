
import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singn_in_screen.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singnup_in_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();

    
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Singnup_In()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A23),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/nikelogo.png",
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
