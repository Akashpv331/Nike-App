


import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/splash_screen/splash2.dart';
import 'package:nike_project/views/screens/splash_screen/splash4.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

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
                 padding: const EdgeInsets.all(16.0),
                 child: LinearProgressIndicator(
                  value: 0.75,
                  backgroundColor: Colors.white30,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                               ),
               ),SizedBox(height: 20,),
        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                  "Want to use location\n services to help you \n find the closet  Nike  \nstore,access in store\n and location based \nfeatures, and see \nexperience near you?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                                ),
                ),
        
              const Spacer(),
        
             
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SplashScreen4()),
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
                  child: const Text("Next"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
