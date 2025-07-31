import 'package:flutter/material.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final Size=MediaQuery.of(context).size;

    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
        title: const Text("Bag")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            Card(elevation: 1,
            color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                   
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://t4.ftcdn.net/jpg/11/84/12/25/240_F_1184122519_O5ab1hn5GmiESHHz4dA0RpjBUljuWBKb.jpg",
                        height: Size.height/6,
                        width: Size.width/2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                  
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Nike Alphafly 3 Premium",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 4),
                          Text(
                            "Men's Road Racing Shoes\nWhite/Black/Red\nSize: 6 (EU 40)",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 8),
                         
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),SizedBox(height: 10,),
            Row(
                          children: [
                            Text("Qty: 1", style: TextStyle(fontWeight: FontWeight.w600)),
                            Spacer(),
                            Text("₹ 23,795.00", style: TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),

            const SizedBox(height: 20),
            const Divider(),

            const SizedBox(height: 10),
            _priceRow("Subtotal", "₹ 23,795.00"),
            _priceRow("Delivery", "₹ 1,250.00"),
            const Divider(),
            _priceRow("Total", "₹ 25,045.00", bold: true),
            const SizedBox(height: 20),

          
            SizedBox(
              width: double.infinity,
              height: Size.height/16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text("Checkout", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _priceRow(String label, String value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(label, style: TextStyle(fontSize: 14, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
          const Spacer(),
          Text(value, style: TextStyle(fontSize: 14, fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
