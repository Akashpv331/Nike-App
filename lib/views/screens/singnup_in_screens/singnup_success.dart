import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/singnup_in_screens/welcomscreen.dart';


class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,),
      body: 
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Row(
                  children: [
                    Image.asset(
                      "assets/nikelogo3.png",
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/nikelogo2.png',
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(height: 10,)
                ,Text("You have been signed in \n successfuly",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
               , SizedBox(height: 20,)
               
               
               ,Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => WelcomeScreen()),
                    ),
                    style: ElevatedButton.styleFrom(
                    
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 14),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
],),
                
      )
    );
  }
}
