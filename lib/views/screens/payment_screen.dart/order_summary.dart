// import 'package:flutter/material.dart';
// import 'package:nike_project/views/screens/payment_screen.dart/payment.dart';

// class OrderSummaryScreen extends StatelessWidget {
//    final TabController tabController;
//   const OrderSummaryScreen({super.key, required this.tabController});

//   @override
//   Widget build(BuildContext context) {
//         final Size = MediaQuery.of(context).size;

//     return Scaffold(
    
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text("Delivery to:", style: TextStyle(fontWeight: FontWeight.bold)),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 const Text("John Smith"),
//                 const SizedBox(width: 10),
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//                   decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
//                   child: const Text("Home"),
//                 ),
//                 const Spacer(),
//                 Icon(Icons.edit, color: Colors.black),
//               ],
//             ),
//             const SizedBox(height: 8),
//             const Text("Quisque fermentum ipsum vitae diam sagittis malesuada."),
//             const SizedBox(height: 20),
//           Card(elevation: 2,
//             child: Container(
//               padding:  EdgeInsets.all(12),
//               decoration: BoxDecoration(
                
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
                  
//                 ],
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(8),
//                     child: Image.network(
//             'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmlrZSUyMHNob2V8ZW58MHx8MHx8fDA%3D',
//             width: Size.width/4,
//             height: Size.height/8,
//             fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(width: 12),
//                   Expanded(
//                     child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 "Men’s Road Racing Shoes",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 4),
//               Text(
//                 "White/Black/University - 6 (EU 40)",
//                 style: TextStyle(color: Colors.grey),
//               ),
//               SizedBox(height: 4),
//               Text(
//                 "MRP: ₹23,795.00",
//                 style: TextStyle(color: Colors.black),
//               ),
//             ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )

//             , SizedBox(height: 10),
//             const Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold)),
//             const SizedBox(height: 6),
//             _priceRow("Subtotal", "₹ 23,795.00"),
//             _priceRow("Delivery", "₹ 1,250.00"),
//             _priceRow("Total", "₹ 25,045.00", isBold: true),
//             const Spacer(),
//             SizedBox(width: double.infinity,
//               child: ElevatedButton
//               (onPressed: () {
//                 // Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(),));
//                  tabController.animateTo(2);
//               },  
              
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
//                   child: Text("Continue"),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _priceRow(String label, String amount, {bool isBold = false}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 2),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(label, style: isBold ? const TextStyle(fontWeight: FontWeight.bold) : null),
//           Text(amount, style: isBold ? const TextStyle(fontWeight: FontWeight.bold) : null),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/payment_screen.dart/payment.dart';

class OrderSummaryScreen extends StatelessWidget {
  final TabController tabController;
  const OrderSummaryScreen({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const Text(
              "Delivery to:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text("John Smith"),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text("Home"),
                ),
                const Spacer(),
                const Icon(Icons.edit, color: Colors.black),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Quisque fermentum ipsum vitae diam sagittis malesuada.",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Section: Product Summary
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=500&auto=format&fit=crop&q=60',
                        width: size.width / 4,
                        height: size.height / 8,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Men’s Road Racing Shoes",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "White/Black/University - 6 (EU 40)",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "MRP: ₹23,795.00",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Section: Price Details
            const Text(
              "Price Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            _priceRow("Subtotal", "₹23,795.00"),
            _priceRow("Delivery", "₹1,250.00"),
            const Divider(height: 24),
            _priceRow("Total", "₹25,045.00", isBold: true),
            const Spacer(),

            // Button: Continue to Payment
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => tabController.animateTo(2),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _priceRow(String label, String amount, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text(amount, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
