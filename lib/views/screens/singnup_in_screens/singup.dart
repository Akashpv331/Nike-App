// import 'package:flutter/material.dart';
// import 'package:nike_project/views/screens/singnup_in_screens/singnupdetails.dart';

// class SignUpEmailScreen extends StatelessWidget {
//   const SignUpEmailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 20),
             
//               Row(
//                 children: [
//                   Image.asset(
//                     "assets/nikelogo3.png",
//                     height: 30,
//                     width: 30,
//                     fit: BoxFit.cover,
//                   ),
//                   const SizedBox(width: 10),
//                   Image.asset(
//                     'assets/nikelogo2.png',
//                     height: 30,
//                     width: 30,
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 20),
//               const Text(
//                 "Enter your email to join us or sign in.",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   const Text(
//                     "India",
//                     style: TextStyle(color: Colors.black, fontSize: 18),
//                   ),
//                   const SizedBox(width: 8),
//                   Text(
//                     ": change",
//                     style: TextStyle(color: Colors.grey[500], fontSize: 18),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   filled: true,
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),
//               Text(
//                 "By continuing, I agree to Nike’s Privacy Policy and Terms of Use.",
//                 style: TextStyle(color: Colors.grey[600], fontSize: 14),
//               ),

//               const SizedBox(height: 20),

              
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (_) => SignUpDetailsScreen()),
//                     ),
//                     style: ElevatedButton.styleFrom(
                    
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 24, vertical: 14),
//                     ),
//                     child: const Text(
//                       "Continue",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 40),
//               const Divider(thickness: 1, color: Colors.grey),

//               const SizedBox(height: 20),
//               const Center(
//                 child: Text(
//                   "Or continue with",
//                   style: TextStyle(color: Colors.black, fontSize: 16),
//                 ),
//               ),
//               const SizedBox(height: 30),

             
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   socialIcon(
//                       "https://cdn-icons-png.flaticon.com/512/2991/2991148.png"),
//                   const SizedBox(width: 24),
//                   socialIcon(
//                       "https://cdn-icons-png.flaticon.com/512/0/747.png"),
//                   const SizedBox(width: 24),
//                   socialIcon(
//                       "https://cdn-icons-png.flaticon.com/512/5968/5968764.png"),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget socialIcon(String imageUrl) {
//     return InkWell(
//       onTap: () {},
//       child: Container(
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.grey[200],
//         ),
//         child: Image.network(
//           imageUrl,
//           height: 24,
//           width: 24,
//           fit: BoxFit.contain,
//           errorBuilder: (_, __, ___) =>
//               const Icon(Icons.error, color: Colors.red),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singnupdetails.dart';

class SignUpEmailScreen extends StatefulWidget {
  const SignUpEmailScreen({super.key});

  @override
  State<SignUpEmailScreen> createState() => _SignUpEmailScreenState();
}

class _SignUpEmailScreenState extends State<SignUpEmailScreen> {
  final TextEditingController _emailController = TextEditingController();

  void _continue() {
    final email = _emailController.text.trim();
    if (email.isEmpty || !email.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid email address')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SignUpDetailsScreen(email: email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const SizedBox(height: 20),

              // Nike Logos
              Row(
                children: [
                  Image.asset("assets/nikelogo3.png", height: 30, width: 30),
                  const SizedBox(width: 10),
                  Image.asset("assets/nikelogo2.png", height: 30, width: 30),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "Enter your email to join us or sign in.",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  const Text("India", style: TextStyle(fontSize: 18)),
                  const SizedBox(width: 8),
                  Text(": change", style: TextStyle(color: Colors.grey[500], fontSize: 18)),
                ],
              ),

              const SizedBox(height: 20),

              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "By continuing, I agree to Nike’s Privacy Policy and Terms of Use.",
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),

              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: _continue,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  ),
                  child: const Text("Continue", style: TextStyle(color: Colors.white)),
                ),
              ),

              const SizedBox(height: 40),
              const Divider(thickness: 1),

              const SizedBox(height: 20),
              const Center(
                child: Text("Or continue with", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  socialIcon("https://cdn-icons-png.flaticon.com/512/2991/2991148.png"),
                  socialIcon("https://cdn-icons-png.flaticon.com/512/0/747.png"),
                  socialIcon("https://cdn-icons-png.flaticon.com/512/5968/5968764.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialIcon(String imageUrl) {
    return InkWell(
      onTap: () {}, // Future: Add social auth
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: Image.network(
          imageUrl,
          height: 24,
          width: 24,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => const Icon(Icons.error, color: Colors.red),
        ),
      ),
    );
  }
}
