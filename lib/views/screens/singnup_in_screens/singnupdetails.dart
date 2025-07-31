

// import 'package:flutter/material.dart';
// import 'package:nike_project/views/screens/singnup_in_screens/singnup_success.dart';

// class SignUpDetailsScreen extends StatefulWidget {
//   const SignUpDetailsScreen({super.key, required String email});

//   @override
//   State<SignUpDetailsScreen> createState() => _SignUpDetailsScreenState();
// }

// class _SignUpDetailsScreenState extends State<SignUpDetailsScreen> {
//   bool _obscurePassword = true;
//   TextEditingController codecontroller = TextEditingController();
//   TextEditingController namecontroller = TextEditingController();
//   TextEditingController surnamecontroller = TextEditingController();
//   TextEditingController password = TextEditingController();

//   InputDecoration customInputDecoration(String label, {IconData? icon}) {
//     return InputDecoration(
//       labelText: label,
//       prefixIcon: icon != null ? Icon(icon) : null,
//       filled: true,
//       fillColor: Colors.white,
//       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//       enabledBorder: OutlineInputBorder(
//         borderSide: const BorderSide(color: Colors.grey),
//         borderRadius: BorderRadius.circular(10),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: ListView(
//           children: [
//              Row(
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
//             const Text(
//               "Now lets make you a nike member ",
//               style: TextStyle(fontSize: 25, color: Colors.black),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               "we've send a code to akash@gmail.com",
// style: TextStyle(fontSize: 12,color: Colors.grey[500]),
//           ),SizedBox(height: 15,),

//             TextField(
//               controller: codecontroller,
//               decoration: customInputDecoration(
//                 "Code",
//                 icon: Icons.email_outlined,
//               ),
//               keyboardType: TextInputType.number,
//             ),
//             const SizedBox(height: 16),

//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: namecontroller,
//                     decoration: customInputDecoration("First Name"),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: TextField(
//                     controller: surnamecontroller,
//                     decoration: customInputDecoration("Surname"),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),

//             TextField(
//               controller: password,
//               obscureText: _obscurePassword,
//               decoration: customInputDecoration("Password", icon: Icons.lock)
//                   .copyWith(
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _obscurePassword
//                             ? Icons.visibility_off
//                             : Icons.visibility,
//                         color: Colors.grey,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _obscurePassword = !_obscurePassword;
//                         });
//                       },
//                     ),
//                   ),
//             ),
//             const SizedBox(height: 20),
//             Text("minimum of 8 characters", style: TextStyle(fontSize: 12, color: Colors.grey[400]),),
//             Text("uppercase lower case letters and one number", style: TextStyle(fontSize: 12, color: Colors.grey[400]),),
//             SizedBox(height: 20),
//             const Text(
//               "Date of Birth",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 12),

//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(decoration: customInputDecoration("Day")),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: TextField(decoration: customInputDecoration("Month")),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: TextField(decoration: customInputDecoration("Year")),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 30),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () => Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const SignUpSuccessScreen(),
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                 ),
//                 child: const Text(
//                   "Continue",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:nike_project/controllers/auth_controller.dart';
import 'package:nike_project/views/screens/singnup_in_screens/singnup_success.dart';

class SignUpDetailsScreen extends StatefulWidget {
  final String email;
  const SignUpDetailsScreen({super.key, required this.email});

  @override
  State<SignUpDetailsScreen> createState() => _SignUpDetailsScreenState();
}

class _SignUpDetailsScreenState extends State<SignUpDetailsScreen> {
  final AuthController _authController = AuthController();
  bool _obscurePassword = true;

  final codeController = TextEditingController();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final passwordController = TextEditingController();
  final dayController = TextEditingController();
  final monthController = TextEditingController();
  final yearController = TextEditingController();

  InputDecoration customInputDecoration(String label, {IconData? icon}) {
    return InputDecoration(
      labelText: label,
      prefixIcon: icon != null ? Icon(icon) : null,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  Future<void> _registerUser() async {
    final email = widget.email.trim();
    final password = passwordController.text.trim();
    final name = nameController.text.trim();
    final surname = surnameController.text.trim();
    final dob = "${dayController.text}/${monthController.text}/${yearController.text}";

    if (name.isEmpty || surname.isEmpty || password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please complete all fields properly.")),
      );
      return;
    }

    final error = await _authController.registerUser(
      email: email,
      password: password,
      name: name,
      surname: surname,
      dob: dob,
    );

    if (error == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SignUpSuccessScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $error")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Image.asset("assets/nikelogo3.png", height: 30, width: 30),
                const SizedBox(width: 10),
                Image.asset("assets/nikelogo2.png", height: 30, width: 30),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Now let's make you a Nike member",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              "We've sent a code to \${widget.email}",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: codeController,
              decoration: customInputDecoration("Code", icon: Icons.email_outlined),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: customInputDecoration("First Name"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: surnameController,
                    decoration: customInputDecoration("Surname"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            TextField(
              controller: passwordController,
              obscureText: _obscurePassword,
              decoration: customInputDecoration("Password", icon: Icons.lock).copyWith(
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                ),
              ),
            ),

            const SizedBox(height: 10),
            Text("Minimum of 8 characters", style: TextStyle(fontSize: 12, color: Colors.grey[400])),
            Text("Use uppercase, lowercase letters and one number", style: TextStyle(fontSize: 12, color: Colors.grey[400])),

            const SizedBox(height: 20),
            const Text("Date of Birth", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: TextField(controller: dayController, decoration: customInputDecoration("Day"))),
                const SizedBox(width: 10),
                Expanded(child: TextField(controller: monthController, decoration: customInputDecoration("Month"))),
                const SizedBox(width: 10),
                Expanded(child: TextField(controller: yearController, decoration: customInputDecoration("Year"))),
              ],
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _registerUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text("Continue", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
