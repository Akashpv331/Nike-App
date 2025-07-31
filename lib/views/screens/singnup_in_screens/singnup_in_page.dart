
// import 'package:flutter/material.dart';
// import 'package:nike_project/views/screens/singnup_in_screens/singn_in_screen.dart';

// class Singnup_In extends StatefulWidget {
//   const Singnup_In({super.key});

//   @override
//   State<Singnup_In> createState() => _Singnup_InState();
// }

// class _Singnup_InState extends State<Singnup_In> {
//   @override
//   void initState() {
//     super.initState();

    
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!mounted) return; 
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => const SignInScreen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A23),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [SizedBox(height: 20,),
//             Image.asset(
//               "assets/nikelogo.png",
//               height: 50,
//               width: 50,
//               fit: BoxFit.fill,
//             ),
//             SizedBox(height: 20,),
//             Text("Hi Akash",style: TextStyle(color: Colors.white,fontSize: 20),),
//             Text("Welcome To Nike",style: TextStyle(color: Colors.white,fontSize: 20),),
//             SizedBox(height: 10,),
//             Text("Thanks for becoming a\n Member",style: TextStyle(color: Colors.white,fontSize: 10),)
//           ],
//         ),
//       ),
//     );
//   }
// }

// File: views/screens/singnup_in_screens/singnup_in.dart

import 'package:flutter/material.dart';
import 'package:nike_project/controllers/auth_controller.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singn_in_screen.dart';

class Singnup_In extends StatefulWidget {
  const Singnup_In({super.key});

  @override
  State<Singnup_In> createState() => _Singnup_InState();
}

class _Singnup_InState extends State<Singnup_In> {
  String userName = "User"; 
  final AuthController _authController = AuthController();

  @override
  void initState() {
    super.initState();
    fetchUserName();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SignInScreen()),
      );
    });
  }

  Future<void> fetchUserName() async {
    final name = await _authController.getUserName();
    if (!mounted) return;
    setState(() {
      userName = name ?? "User";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A23),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              "assets/nikelogo.png",
              height: 50,
              width: 50,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            Text("Hi $userName", style: const TextStyle(color: Colors.white, fontSize: 20)),
            const Text("Welcome To Nike", style: TextStyle(color: Colors.white, fontSize: 20)),
            const SizedBox(height: 10),
            const Text(
              "Thanks for becoming a\n Member",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
