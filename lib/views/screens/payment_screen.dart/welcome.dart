import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/payment_screen.dart/success_page.dart';
import 'package:nike_project/views/screens/singnup_in_screens/login_screen.dart';


class OrderWelcomeScreen extends StatefulWidget {
  const OrderWelcomeScreen({super.key});

  @override
  State<OrderWelcomeScreen> createState() => _OrderWelcomeScreenState();
}

class _OrderWelcomeScreenState extends State<OrderWelcomeScreen> {
  @override
  void initState() {
    super.initState();

    
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>OrderSuccessScreen() ),
      );
    });
  }
  Widget build(BuildContext context) {
        final Size = MediaQuery.of(context).size;

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
