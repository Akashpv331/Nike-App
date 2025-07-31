import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/splash_screen/splash5.dart';

class SplashScreen4 extends StatelessWidget {
  const SplashScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
            decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgsplash.jpg'),
            fit: BoxFit.cover,
          ),
        ),


       
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          color: Colors.black.withOpacity(0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const LinearProgressIndicator(
                value: 1.0,
                backgroundColor: Colors.white30,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              const SizedBox(height: 30),

              const Text(
                "Get personalised ads\nby enabling app tracking",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),

              infoRow(
                icon: Icons.check,
                text:
                    "Get personalised Nike ads on partner\nplatforms based on your app activity",
              ),
              const SizedBox(height: 20),
              infoRow(
                icon: Icons.settings,
                text:
                    'On the next prompt, if you select\n"Ask App Not to Track", you may see\nless relevant Nike ads.',
              ),
              const SizedBox(height: 12),
              const Text(
                "Learn more",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "On iOS, your permission is required to\ntrack your activity on this app on this\ndevice. This can be updated at any time\nfrom your device settings.",
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
              const Spacer(),

             
              Center(
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context) => splash5(),));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 14),
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

  Widget infoRow({required IconData icon, required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.white, size: 18),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
