import 'package:flutter/material.dart';
import 'package:nike_project/controllers/auth_controller.dart';
import 'package:nike_project/views/screens/product_section/my_order.dart';

class ProfileScreen extends StatefulWidget {

   ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userName = "User";

  final AuthController _authController = AuthController();

Future<void> fetchUserName() async {
    final name = await _authController.getUserName();
    if (!mounted) return;
    setState(() {
      userName = name ?? "User";
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUserName();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [SizedBox(height: 20,),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/45.jpg"),
            ),
            const SizedBox(height: 10),
             Text("$userName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 5),
            OutlinedButton(onPressed: () {}, child: const Text("Edit Profile")),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: () {Navigator.push(context, MaterialPageRoute(builder:(context) => MyOrdersPage(),));
                  
                },
                  child: _ProfileItem(icon: Icons.shopping_bag, label: "Orders")),
                _ProfileItem(icon: Icons.card_membership, label: "Pass"),
                _ProfileItem(icon: Icons.event, label: "Events"),
                _ProfileItem(icon: Icons.settings, label: "Settings"),
              ],
            ),
            const Divider(height: 40),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text("Inbox"),
              trailing: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Text("2", style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            ), const Divider(height: 40),
            const ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text("Your Nike Member Rewards"),
              subtitle: Text("2 available"),
            ), const Divider(height: 40),
            const ListTile(
              leading: Icon(Icons.people),
              title: Text("Following (19)"),
              trailing: Text("Edit"),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ProfileItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 28),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
