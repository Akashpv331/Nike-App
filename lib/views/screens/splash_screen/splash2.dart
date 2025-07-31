// import 'package:flutter/material.dart';
// import 'package:nike_project/views/screens/splash_screen/splash3.dart';

// class SplashScreen2 extends StatelessWidget {
//   const SplashScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,

       
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/bgsplash.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),

        
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
//           color: Colors.black.withOpacity(0.3),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
            
//               const LinearProgressIndicator(
//                 value: 0.5,
//                 backgroundColor: Colors.white30,
//                 valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//               ),
//               const SizedBox(height: 40),

//               const Text(
//                 "Which products do you use the most?",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const SizedBox(height: 30),

//               // 🔘 Men's Option
//               optionTile(
//                 imageUrl: "https://randomuser.me/api/portraits/men/10.jpg",
//                 label: "Men's",
//               ),
//               Divider(thickness: 0.3,),
//               optionTile(
//                 imageUrl: "https://randomuser.me/api/portraits/women/10.jpg",
//                 label: "Women's",
//               ),

//               const SizedBox(height: 20),
//               const Text("Any others?", style: TextStyle(color: Colors.white70)),

//               optionTile(
//                 imageUrl: "https://randomuser.me/api/portraits/men/20.jpg",
//                 label: "Boys'",
//               ),
//               Divider(thickness: 0.3,),
//               optionTile(
//                 imageUrl: "https://randomuser.me/api/portraits/women/20.jpg",
//                 label: "Girls'",
//               ),

//               const Spacer(),

              
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (_) => const SplashScreen3()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.black,
//                     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                   ),
//                   child: const Text("Next"),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget optionTile({required String imageUrl, required String label}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           CircleAvatar(
//             backgroundImage: NetworkImage(imageUrl),
//           ),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Text(
//               label,
//               style: const TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ),
//           const Icon(Icons.radio_button_unchecked, color: Colors.white),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/splash_screen/splash3.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  String? selectedOption;

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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          color: Colors.black.withOpacity(0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.white30,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              const SizedBox(height: 40),

              const Text(
                "Which products do you use the most?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              optionTile(
                imageUrl: "https://randomuser.me/api/portraits/men/10.jpg",
                label: "Men's",
              ),
              const Divider(thickness: 0.3),
              optionTile(
                imageUrl: "https://randomuser.me/api/portraits/women/10.jpg",
                label: "Women's",
              ),

              const SizedBox(height: 20),
              const Text("Any others?", style: TextStyle(color: Colors.white70)),

              optionTile(
                imageUrl: "https://randomuser.me/api/portraits/men/20.jpg",
                label: "Boys'",
              ),
              const Divider(thickness: 0.3),
              optionTile(
                imageUrl: "https://randomuser.me/api/portraits/women/20.jpg",
                label: "Girls'",
              ),

              const Spacer(),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SplashScreen3()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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

  Widget optionTile({required String imageUrl, required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Radio<String>(
            value: label,
            groupValue: selectedOption,
            activeColor: Colors.white,
            fillColor: MaterialStateProperty.all(Colors.white),
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
