

import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/payment_screen.dart/welcome.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedMethod = "GPay";
  String selectedTab = "UPI";

  final List<String> paymentTabs = ["UPI", "Card", "Bank", "Cash"];

  final Map<String, List<Map<String, String>>> paymentOptions = {
    "UPI": [
      {
        "label": "GPay",
        "image":
            "https://play-lh.googleusercontent.com/HArtbyi53u0jnqhnnxkQnMx9dHOERNcprZyKnInd2nrfM7Wd9ivMNTiz7IJP6-mSpwk",
      },
      {
        "label": "PhonePe",
        "image":
            "https://w7.pngwing.com/pngs/332/615/png-transparent-phonepe-india-unified-payments-interface-india-purple-violet-text-thumbnail.png",
      },
      {
        "label": "Paytm",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu_weg9N_SrEb3oDe_xuOxXtEYzlOtPdtqaP0PDEmgXd6R3p1LCOXYHvJGusQu26UhfWo&usqp=CAU",
      },
      {
        "label": "Paypal",
        "image":
            "https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_111x69.jpg",
      },
    ],
    "Card": [
      {
        "label": "Visa",
        "image":
            "https://logos-world.net/wp-content/uploads/2020/04/Visa-Logo.png",
      },
     
    ],
    "Bank": [
    
      {
        "label": "SBI",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/5/5c/SBI-logo-blue-background.png",
      },
    ],
    "Cash": [
      {
        "label": "Cash on Delivery",
        "image": "https://cdn-icons-png.flaticon.com/512/2331/2331970.png",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return Scaffold(
   
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Men’s Road Racing Shoes\n6 (EU 40)",
              style: TextStyle(fontSize: 16,color: Colors.grey),
            ),
            const SizedBox(height: 10),
            _priceRow("Subtotal", "₹ 23,795.00",),
            _priceRow("Delivery", "₹ 1,250.00"),
            _priceRow("Total", "₹ 25,045.00", isBold: true),
            const SizedBox(height: 20),

            _buildPaymentTabs(Size),

            SizedBox(height: 16),

            _buildMethodOptions(),

            Spacer(),

            SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => OrderWelcomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
                  child: Text("Place Order"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget _buildPaymentTabs(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: paymentTabs.map((tab) {
        bool isSelected = tab == selectedTab;
        IconData icon;
        switch (tab) {
          case "UPI":
            icon = Icons.phone_iphone;
            break;
          case "Card":
            icon = Icons.credit_card;
            break;
          case "Bank":
            icon = Icons.account_balance;
            break;
          case "Cash":
            icon = Icons.money;
            break;
          default:
            icon = Icons.payment;
        }
        return GestureDetector(
          onTap: () => setState(() => selectedTab = tab),
          child: Card(
            child: Container(
              height: size.height / 7,
              width: size.width / 5,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? Colors.black : null,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: isSelected ? Colors.white : Colors.black),
                  const SizedBox(height: 6),
                  Text(
                    tab,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }


  Widget _buildMethodOptions() {
        final Size = MediaQuery.of(context).size;

    final methods = paymentOptions[selectedTab] ?? [];
    return Card(
      child: Column(
        children: methods.map((method) {
          return RadioListTile<String>(
            value: method['label']!,
            groupValue: selectedMethod,
            onChanged: (val) => setState(() => selectedMethod = val!),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    method['image']!,
                    width: Size.width/12,
                    height: Size.height/26,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 10),
                Text(method['label']!),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _priceRow(String label, String amount, {bool isBold = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: isBold ? TextStyle(fontWeight: FontWeight.bold) : null,
          ),
          Text(
            amount,
            style: isBold ? TextStyle(fontWeight: FontWeight.bold) : null,
          ),
        ],
      ),
    );
  }
}
