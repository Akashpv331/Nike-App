import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:flutter/material.dart';
import 'package:nike_project/controllers/auth_controller.dart';
import 'package:nike_project/views/screens/product_section/product_details.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userName = "User";
  final AuthController _authController = AuthController();
  final List<Map<String, String>> topPicks = [
    {
      'image':
          'https://t3.ftcdn.net/jpg/04/79/14/06/240_F_479140608_7xjG5HfKnYSDoEErrGYaSDIVzNPPxArw.jpg',
      'name': 'Air Jordan 1 Low',
      'gender': "Women's Shoes",
      'price': '₹ 8,295.00',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmlrZSUyMHNob2V8ZW58MHx8MHx8fDA%3D',
      'name': 'Nike SB Dunk',
      'gender': "Men's Shoes",
      'price': '₹ 23,795.00',
    },
    {
      'image':"https://images.unsplash.com/photo-1542219550-37153d387c27?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE5fHxzaG9lc3xlbnwwfHwwfHx8MA%3D%3D",
      'name': 'Air Jordan 1 Low',
      'gender': "Women's Shoes",
      'price': '₹ 8,295.00',
    },
  ];

  final List<String> nikeSlider = [
    'https://images.unsplash.com/photo-1597045566677-8cf032ed6634?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHNob2VzfGVufDB8fDB8fHww',
    "https://images.unsplash.com/photo-1605812860427-4024433a70fd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODh8fHNob2VzfGVufDB8fDB8fHww"
    "https://images.unsplash.com/photo-1600269452121-4f2416e55c28?q=80&w=1530&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
"https://images.unsplash.com/photo-1628253747716-0c4f5c90fdda?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE0fHxzaG9lc3xlbnwwfHwwfHx8MA%3D%3D"  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUserName();
  }

  Future<void> fetchUserName() async {
    final name = await _authController.getUserName();
    if (!mounted) return;
    setState(() {
      userName = name ?? "User";
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/nikelogo3.png",
                      height: Size.height / 29,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      "assets/nikelogo2.png",
                      height: Size.height / 29,
                    ),
                  ],
                ),
                const Icon(Icons.search),
              ],
            ),
            const SizedBox(height: 20),

            Text(
              "Good Morning $userName",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Picks for You",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("View All", style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Recommended products",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: Size.height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topPicks.length,
                itemBuilder: (context, index) {
                  final product = topPicks[index];
                  return InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ProductDetailsPage(imageUrl: product['image']!,
      productName: product['name']!,
      price: product['price']!,) ,));
                  },
                    child: Container(
                      width: Size.height / 5,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[100],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  product['image']!,
                                  height: Size.height / 6,
                                  width: Size.width / 2,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Positioned(
                                top: 8,
                                right: 8,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: Text(
                              product['name']!,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              product['gender']!,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              product['price']!,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "New From Nike",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("View All", style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 10),
            carousel.CarouselSlider(
              options: carousel.CarouselOptions(
                height: Size.height / 2.9,

                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
              ),
              items: nikeSlider.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        url,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
