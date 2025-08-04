// import 'package:flutter/material.dart';
// import 'package:nike_project/constant/app_constant.dart';
// import 'package:nike_project/views/screens/payment_screen.dart/order_summary.dart';

// class AddressScreen extends StatelessWidget {
//   const AddressScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//         final Size = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(title: const Text("Address")),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             _buildTextField("Full Name (Required)"),
//             _buildTextField("Phone number (Required)"),
//             const SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text("+Add Alternate Phone Number", style: TextStyle(color: Colors.grey[700])),
//             ),
//             const SizedBox(height: 10),
//             Row(
//               children: [
//                 Expanded(child: _buildTextField("Pincode (Required)")),
//                 const SizedBox(width: 10),
//                 Expanded(child: _buildTextField("State (Required)")),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(child: _buildTextField("City (Required)")),
//                 const SizedBox(width: 10),
//                 Expanded(child: _buildTextField("Landmark (Required)")),
//               ],
//             ),
//             _buildTextField("House No., Building Name (Required)"),
//             _buildTextField("Road name, Area, Colony (Required)"),
//             const SizedBox(height: 16),
//             const Align(alignment: Alignment.centerLeft, child: Text("Type of address")),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 _addressTypeButton(Icons.home, "Home"),
//                  SizedBox(width: 10),
//                 _addressTypeButton(Icons.work, "Work"),
//               ],
//             ),
//             const SizedBox(height: 20),
//             SizedBox(width: double.infinity,
//               child: ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => OrderSummaryScreen(),));
//               },              style: ElevatedButton.styleFrom(backgroundColor: AppColors.black),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
//                   child: Text("Save", style: TextStyle(fontSize: 16)),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String hint) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: hint,
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//         ),
//       ),
//     );
//   }

//   Widget _addressTypeButton(IconData icon, String label) {
//     return
//      ElevatedButton.icon(
//       onPressed: () {},
//       icon: Icon(icon, size: 20),
//       label: Text(label),
//       style: ElevatedButton.styleFrom(
       
//         foregroundColor: AppColors.black,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       ),
//     );
//   }
// }.


import 'package:flutter/material.dart';
import 'package:nike_project/constant/app_constant.dart';

class AddressScreen extends StatelessWidget {
  final TabController tabController;

   const AddressScreen({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField("Full Name (Required)"),
            _buildTextField("Phone number (Required)"),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "+Add Alternate Phone Number",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: _buildTextField("Pincode (Required)")),
                const SizedBox(width: 10),
                Expanded(child: _buildTextField("State (Required)")),
              ],
            ),
            Row(
              children: [
                Expanded(child: _buildTextField("City (Required)")),
                const SizedBox(width: 10),
                Expanded(child: _buildTextField("Landmark (Required)")),
              ],
            ),
            _buildTextField("House No., Building Name (Required)"),
            _buildTextField("Road name, Area, Colony (Required)"),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Type of address"),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _addressTypeButton(Icons.home, "Home"),
                const SizedBox(width: 10),
                _addressTypeButton(Icons.work, "Work"),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  tabController.animateTo(1);
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: AppColors.black),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
                  child: Text("Save", style: TextStyle(fontSize: 16)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  Widget _addressTypeButton(IconData icon, String label) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 20),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}


