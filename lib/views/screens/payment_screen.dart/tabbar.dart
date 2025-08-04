import 'package:flutter/material.dart';
import 'package:nike_project/views/screens/payment_screen.dart/address.dart';
import 'package:nike_project/views/screens/payment_screen.dart/order_summary.dart';
import 'package:nike_project/views/screens/payment_screen.dart/payment.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> tabTitles = ['Address', 'Summary', 'Payment'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {}); 
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          
          
         
          AppBar(
            automaticallyImplyLeading: false,
            title: Text(tabTitles[_tabController.index]),
           
            elevation: 0,
          ),

          Material(
           
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(icon: Icon(Icons.person_pin_outlined), text: "Address"),
                Tab(icon: Icon(Icons.receipt), text: "Summary"),
                Tab(icon: Icon(Icons.payment), text: "Payment"),
              ],
            ),
          ),

         
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                AddressScreen(tabController: _tabController),
                OrderSummaryScreen(tabController: _tabController),
                PaymentScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
