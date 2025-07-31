import 'package:flutter/material.dart';
import 'package:nike_project/constant/app_constant.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    final List<Map<String, dynamic>> orders = [
      {
        "title": "Nike SB Dunk Low Pro",
        "status": "Delivered on Feb 07",
        "image":
            "https://images.unsplash.com/photo-1529810313688-44ea1c2d81d3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHNob2VzfGVufDB8fDB8fHww",
        "statusColor": AppColors.black,
      },
      {
        "title": "Nike Alphafly 3 Premium",
        "status": "Delivered on Dec 25",
        "image":
            "https://images.unsplash.com/photo-1485736231968-0c8ad5c9e174?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fHNob2VzfGVufDB8fDB8fHww",
        "statusColor": AppColors.black,
      },
      {
        "title": "Nike Alphafly 3 Premium",
        "status": "Refund Completed",
        "image":
            "https://media.istockphoto.com/id/2029879472/photo/a-pair-of-modern-running-sneakers-isolated-on-white-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=nEPDT4JPT7Iezxua_9WGc2dM5NtsyhVCo5eIqnWTCGA=",
        "statusColor": Colors.orange,
      },
      {
        "title": "Nike Air Max",
        "status": "Cancelled on Dec 19",
        "image":
            "https://images.unsplash.com/photo-1605408499391-6368c628ef42?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTF8fHNob2VzfGVufDB8fDB8fHww",
        "statusColor": AppColors.red,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Order"),
        leading: const BackButton(),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                SizedBox(
                  height: Size.height / 20,
                  width: Size.width / 1.6,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Product",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Container(
                  height: Size.height / 20,
                  width: Size.width / 3.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: AppColors.black
                  ),child: Center(child: Text("search",style: TextStyle(color:AppColors.white),)),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: orders.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                final order = orders[index];
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        order['image'],
                        height: Size.height / 8,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        order['status'],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: order['statusColor'],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        order['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Icon(Icons.star, size: 16, color: AppColors.amber),
                          Icon(Icons.star, size: 16, color: AppColors.amber),
                          Icon(Icons.star, size: 16, color: AppColors.amber),
                          Icon(Icons.star, size: 16, color: AppColors.amber),
                          Icon(Icons.star, size: 16, color: AppColors.amber),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Rate this product now",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
