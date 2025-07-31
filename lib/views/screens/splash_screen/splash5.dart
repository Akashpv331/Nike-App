
import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singn_in_screen.dart';
import 'package:nike_project/views/widgets/bottom_navigation.dart';

class splash5 extends StatefulWidget {
  const splash5({super.key});

  @override
  State<splash5> createState() => _splash5State();
}

class _splash5State extends State<splash5> {
  @override
  void initState() {
    super.initState();

    
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => BottomNavBar()),
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
