// import 'package:flutter/material.dart';

// class OrderDetailsPage extends StatelessWidget {
//   final String imageUrl;
//   final String productName;
//   final String price;
//   const OrderDetailsPage({super.key, required this.imageUrl, required this.productName, required this.price});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Order Details")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text("Order ID - OD3335577456...", style: TextStyle(fontWeight: FontWeight.bold)),
//             const SizedBox(height: 16),
//             ListTile(
//               contentPadding: EdgeInsets.zero,
//               leading: Image.network(imageUrl,
//                 width: 60,
//               ),
//               title:  Text("$productName"),
//               subtitle:  Text("Size: 6 (EU 40)\nMRP : ₹ $price"),
//             ),
//             const Divider(),
//             const SizedBox(height: 8),
//             orderStep("Order Confirmed, Today", "Your Order has been placed.\nFri, 7th Feb 25 - 2:37PM"),
//             const Divider(),
//             orderStep("Shipped Expected By Fri 7th Feb", "Item Yet to be Shipped.\nExpected by Fri, 7th Feb"),
//             const Divider(),
//             orderStep("Out For Delivery", "Item Yet to be delivered."),
//             const Divider(),
//             orderStep("Delivery Expected By Sun 9th Feb", "Expected by Sun, 9th Feb"),
//             const Spacer(),
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 minimumSize: const Size.fromHeight(48),
//               ),
//               child: const Text("Edit Order", style: TextStyle(color: Colors.white)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget orderStep(String title, String subtitle) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Icon(Icons.check_circle, color: Colors.green),
//         const SizedBox(width: 10),
//         Expanded(child: Text("$title\n$subtitle")),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:nike_project/constant/app_constant.dart';

class OrderDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;

  const OrderDetailsPage({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
        final Size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("Order Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Order ID - OD3335577456...",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

          
            Card(elevation: 2,
              child: Row(
                children: [
                  Container(
                    width: Size.width/2.5,
                    height: Size.height/7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 4),
                        const Text("Men's Road Racing Shoes"),
                        const Text("White/Black/Univ..."),
                        const Text("Size: 6 (EU 40)"),
                        Text("MRP : ₹ $price",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 24),

            
            Expanded(
              child: Stack(
                children: [
                  
                  Positioned(
                    left: 11,
                    top: 10,
                    bottom: 0,
                    child: Column(
                      children: List.generate(
                        60,
                        (index) => Container(
                          width: 2,
                          height: 4,
                          color: index.isEven ? Colors.grey : Colors.transparent,
                        ),
                      ),
                    ),
                  ),

                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      orderStep(
                        icon: Icons.check_circle,color: AppColors.green,
                        title: "Order Confirmed, Today",
                        subtitle:
                            "Your Order has been placed.\nFri, 7th Feb 25 – 2:37PM\nSeller is processing your order\nItem waiting to be picked up",
                      ),
                      const SizedBox(height: 20),
                      orderStep(
                        icon: Icons.local_shipping_outlined,
                        title: "Shipped Expected By Fri 7th Feb",
                        subtitle:
                            "Item yet to be shipped.\nExpected by Fri, 7th Feb",
                      ),
                      const SizedBox(height: 20),
                      orderStep(
                        icon: Icons.directions_bike,
                        title: "Out For Delivery",
                        subtitle: "Item yet to be delivered.",
                      ),
                      const SizedBox(height: 20),
                      orderStep(
                        icon: Icons.home_outlined,
                        title: "Delivery Expected By Sun 9th Feb",
                        subtitle: "Expected by Sun, 9th Feb",
                      ),
                    ],
                  ),
                ],
              ),
            ),

           
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                
                ),
                child: const Text(
                  "Edit Order",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget orderStep({
  required IconData icon,
  Color? color,
  required String title,
  required String subtitle,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(icon, color: color),
      const SizedBox(width: 12),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
}