// import 'package:flutter/material.dart';
// import 'package:nike_project/views/screens/splash_screen/splash1.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   bool _obscurePassword = true;

//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//          final Size=MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
             
//               Row(
//                 children: [
//                   Image.asset("assets/nikelogo.png", height: Size.height/29),
//                   const SizedBox(width: 10),
//                   Image.asset("assets/nikelogo2.png", height: Size.height/29),
//                 ],
//               ),
//               const SizedBox(height: 30),

//               const Text(
//                 "Sign in with email",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               const Text(
//                 "Maecenas a quam a elit porta hendrerit id elementum massa.",
//                 style: TextStyle(color: Colors.grey),
//               ),
//               const SizedBox(height: 24),

              
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   hintText: "johnsmith29@gmail.com",
//                   prefixIcon: const Icon(Icons.email),
//                   suffixIcon: const Icon(Icons.check_circle, color: Colors.green),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                 ),
//               ),

//               const SizedBox(height: 16),

              
//               TextField(
//                 controller: passwordController,
//                 obscureText: _obscurePassword,
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   prefixIcon: const Icon(Icons.lock),
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _obscurePassword ? Icons.visibility_off : Icons.visibility,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _obscurePassword = !_obscurePassword;
//                       });
//                     },
//                   ),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                 ),
//               ),

//               const SizedBox(height: 24),

           
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen1(),));
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF1C0B43),
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   child: const Text("Continue", style: TextStyle(fontSize: 16)),
//                 ),
//               ),

//               const SizedBox(height: 20),
//               const Divider(),
//               const Center(child: Text("or continue with")),
//               const SizedBox(height: 20),

//               // Social Buttons
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Image.network("https://cdn-icons-png.flaticon.com/512/2991/2991148.png", height: 28),
//                   Image.network("https://cdn-icons-png.flaticon.com/512/5968/5968764.png", height: 28),
//                   Image.network("https://cdn-icons-png.flaticon.com/512/0/747.png", height: 28),
//                 ],
//               ),

//               const SizedBox(height: 30),

              
//               const Text(
//                 "Lorem id elementum nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus enim non sapien ullamcorper congue.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 12, color: Colors.grey),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:nike_project/views/screens/splash_screen/splash1.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   bool _obscurePassword = true;
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   final _formKey = GlobalKey<FormState>();

//   bool isEmailValid(String email) {
//     final regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
//     return regex.hasMatch(email);
//   }

//   Future<void> _signInUser() async {
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();

//     if (!isEmailValid(email) || password.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Enter valid email & password")),
//       );
//       return;
//     }

//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

     
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => const SplashScreen1()),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Login failed: ${e.toString()}")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Image.asset("assets/nikelogo.png", height: size.height / 29),
//                     const SizedBox(width: 10),
//                     Image.asset("assets/nikelogo2.png", height: size.height / 29),
//                   ],
//                 ),
//                 const SizedBox(height: 30),
//                 const Text("Sign in with email", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//                 const SizedBox(height: 8),
//                 const Text("Maecenas a quam a elit porta hendrerit id elementum massa.", style: TextStyle(color: Colors.grey)),
//                 const SizedBox(height: 24),

//                 TextField(
//                   controller: emailController,
//                   keyboardType: TextInputType.emailAddress,
//                   onChanged: (_) => setState(() {}),
//                   decoration: InputDecoration(
//                     hintText: "johnsmith29@gmail.com",
//                     prefixIcon: const Icon(Icons.email),
//                     suffixIcon: isEmailValid(emailController.text)
//                         ? const Icon(Icons.check_circle, color: Colors.green)
//                         : null,
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                     filled: true,
//                     fillColor: Colors.grey[100],
//                   ),
//                 ),
//                 const SizedBox(height: 16),

//                 TextField(
//                   controller: passwordController,
//                   obscureText: _obscurePassword,
//                   decoration: InputDecoration(
//                     hintText: "Password",
//                     prefixIcon: const Icon(Icons.lock),
//                     suffixIcon: IconButton(
//                       icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility),
//                       onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
//                     ),
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                     filled: true,
//                     fillColor: Colors.grey[100],
//                   ),
//                 ),
//                 const SizedBox(height: 24),

//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: _signInUser,
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF1C0B43),
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                     ),
//                     child: const Text("Continue", style: TextStyle(fontSize: 16)),
//                   ),
//                 ),

//                 const SizedBox(height: 20),
//                 const Divider(),
//                 const Center(child: Text("or continue with")),
//                 const SizedBox(height: 20),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Image.network("https://cdn-icons-png.flaticon.com/512/2991/2991148.png", height: 28),
//                     Image.network("https://cdn-icons-png.flaticon.com/512/5968/5968764.png", height: 28),
//                     Image.network("https://cdn-icons-png.flaticon.com/512/0/747.png", height: 28),
//                   ],
//                 ),
//                 const SizedBox(height: 30),

//                 const Text(
//                   "Lorem id elementum nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 12, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:nike_project/controllers/auth_controller.dart';
import 'package:nike_project/views/screens/splash_screen/splash1.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthController _authController = AuthController();
  bool _obscurePassword = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isEmailValid(String email) {
    final regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    return regex.hasMatch(email);
  }

  Future<void> _signInUser() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (!isEmailValid(email) || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Enter valid email & password")),
      );
      return;
    }

    final error = await _authController.loginUser(
      email: email,
      password: password,
    );

    if (error == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SplashScreen1()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login failed: $error")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/nikelogo.png", height: size.height / 29),
                  const SizedBox(width: 10),
                  Image.asset("assets/nikelogo2.png", height: size.height / 29),
                ],
              ),
              const SizedBox(height: 30),
              const Text("Sign in with email",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                "Maecenas a quam a elit porta hendrerit id elementum massa.",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),

              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(
                  hintText: "johnsmith29@gmail.com",
                  prefixIcon: const Icon(Icons.email),
                  suffixIcon: isEmailValid(emailController.text)
                      ? const Icon(Icons.check_circle, color: Colors.green)
                      : null,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              const SizedBox(height: 16),

              TextField(
                controller: passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _signInUser,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1C0B43),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text("Continue", style: TextStyle(fontSize: 16)),
                ),
              ),

              const SizedBox(height: 20),
              const Divider(),
              const Center(child: Text("or continue with")),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [  
                  Image.network("https://cdn-icons-png.flaticon.com/512/2991/2991148.png", height: 28),
                  Image.network("https://cdn-icons-png.flaticon.com/512/5968/5968764.png", height: 28),
                  Image.network("https://cdn-icons-png.flaticon.com/512/0/747.png", height: 28),
                ],
              ),
              const SizedBox(height: 30),

              const Text(
                "Lorem id elementum nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
