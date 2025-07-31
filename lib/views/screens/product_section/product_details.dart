

import 'package:flutter/material.dart';
import 'package:nike_project/constant/app_constant.dart';
import 'package:nike_project/views/screens/product_section/order_details.dart';

class ProductDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;

  const ProductDetailsPage({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
     final Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(productName),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: Size.height/4,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Column(
                    children:  [
                      CircleAvatar(
                        backgroundColor: AppColors.white,
                        child: Icon(Icons.shopping_cart_outlined),
                      ),
                      SizedBox(height: 10),
                      CircleAvatar(
                        backgroundColor: AppColors.white,
                        child: Icon(Icons.share_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(productName,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
              child: Text("Skate Shoes", style: TextStyle(color: AppColors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("MRP : $price",
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
              child: Text(
                  "Inclusive of all taxes\n(also includes all applicable duties)",
                  style: TextStyle(color: AppColors.grey)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text("Size - UK", style: TextStyle(fontWeight: FontWeight.w600)),
            ),
          Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Row(
    children: List.generate(
      6,
      (index) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 1),
           
          ),
          child: Center(
            child: Text(
              "${6 + index}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    ),
  ),
),

             Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: Size.height/17,
                    color: AppColors.black,
                    child: const Center(
                      child: Text("Add to Bag",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsPage(imageUrl:imageUrl,price:price  ,productName:productName ,)));
                  },
                    child: Container(
                      height: Size.height/17,
                      color: AppColors.white,
                      child: const Center(
                        child:
                            Text("Buy Now", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
