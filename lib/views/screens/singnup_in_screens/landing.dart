import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/singnup_in_screens/login_screen.dart';


class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();

    
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>LoginScreen() ),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Color(0xFF0A0A23),
      body: Center(child:  Image.asset(
              "assets/nikelogo.png",
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
        
      ),
    );
  }
}
