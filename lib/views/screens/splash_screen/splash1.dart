


import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/splash_screen/splash2.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
      
       
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgsplash.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      
       
        child: Container(
          color: Colors.black.withOpacity(0.3), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
             SizedBox(height: 20,),
              
        
               Padding(
                 padding: const EdgeInsets.all(16),
                 child: LinearProgressIndicator(
                  value: 0.25,
                  backgroundColor: Colors.white30,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                               ),
               ),SizedBox(height: 20,),
        
               const Text(
                "To personalise your\n experience and\n connect you to sport.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              const Spacer(),
        
              // 🔘 Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SplashScreen2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Get Started"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
