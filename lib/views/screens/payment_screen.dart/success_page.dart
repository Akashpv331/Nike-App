import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/payment_screen.dart/order_details.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  void initState() {
    super.initState();

    
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; 
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) =>OrderDetailScreen() ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
        final Size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor:  Color(0xFF0A0A23),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
           Image.asset(
              "assets/nikelogo.png",
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
           
            SizedBox(height: 20),
            Text("Order Successfully Placed", style: TextStyle(color: Colors.white, fontSize: 18)),
            Text("Thanks for Purchasing with us", style: TextStyle(color: Colors.white70)),
            SizedBox(height: 8),
            Text("Your Order ID - OD333577456774351100", style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}
