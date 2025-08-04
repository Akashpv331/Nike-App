import 'package:flutter/material.dart';
import 'package:nike_project/constant/app_constant.dart';
import 'package:nike_project/views/screens/home_screens/Home_screen.dart';
import 'package:nike_project/views/screens/product_section/order_details.dart';
import 'package:nike_project/views/screens/product_section/product_details.dart';

class OrderDetailScreen extends StatelessWidget {
   OrderDetailScreen({super.key});
String imag=      'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmlrZSUyMHNob2V8ZW58MHx8MHx8fDA%3D';

  @override
  Widget build(BuildContext context) {
     final Size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("Hi-Nike Order Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Order ID - OD333577456774351100"),
            const SizedBox(height: 12),

            
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                 Image.network(
            'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmlrZSUyMHNob2V8ZW58MHx8MHx8fDA%3D',
            width: Size.width/4,
            height: Size.height/8,
            fit: BoxFit.cover,
                    ),

                    const SizedBox(width: 12),

                  
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Nike SB Dunk Low Pro",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text("White/Black/University - 6 (EU 40)"),
                          SizedBox(height: 6),
                          Text(
                            "₹ 23,795.00",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

             SizedBox(height: 16),

             Center(
               child: Text(
                "Successfully Placed ✅",
                style: TextStyle(color: Colors.green),
                           ),
             ),

           SizedBox(height: 20,),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsPage(imageUrl: "$imag", productName: "Nike SB Dunk Low Pro", price: "₹ 23,795.00"),));
                },
                  child: Container(
                    height: Size.height / 20,
                    width: Size.width / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: AppColors.black
                    ),child: Center(child: Text("Track order",style: TextStyle(color:AppColors.white),)),
                  ),
                ),
             InkWell(onTap: () =>                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),))
,
               child: Container(
                    height: Size.height / 20,
                    width: Size.width / 3.5,
                    decoration: BoxDecoration(border: BoxBorder.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(12)
                      ),
                      
                    ),child: Center(child: Text("Home",style: TextStyle(color:AppColors.black),)),
                  ),
             ),
                  
              ],
            )
          ],
        ),
      ),
    );
  }
}
