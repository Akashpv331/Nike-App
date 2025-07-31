import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, String>> menProducts = [
    {
      'image': 'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmlrZSUyMHNob2V8ZW58MHx8MHx8fDA%3D',
      'name': 'Air Force 1',
      'desc': 'New Arrival',
    },
    {
      'image': 'https://images.unsplash.com/photo-1658492572022-ecf972b354a0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTJ8fG5pa2UlMjBzaG9lfGVufDB8fDB8fHww',
      'name': 'ZoomX Vaporfly',
      'desc': 'Running Shoes',
    },
     {
      'image': 'https://media.istockphoto.com/id/1303978937/photo/white-sneaker-on-a-blue-gradient-background-mens-fashion-sport-shoe-sneakers-lifestyle.webp?a=1&b=1&s=612x612&w=0&k=20&c=ULRau7DB-Wrr9i0GZbQoDXSDjDRDc4H-hfIFWgL5PIY=',
      'name': 'ZoomX Vaporfly',
      'desc': 'Running Shoes',
    },
     {
      'image': 'https://t3.ftcdn.net/jpg/04/35/88/10/240_F_435881031_xADEqLFh0660Ds52GV4UfELKQEr9z4dm.jpg',
      'name': 'ZoomX Vaporfly',
      'desc': 'Running Shoes',
    },
     {
      'image': 'https://t3.ftcdn.net/jpg/05/13/04/94/240_F_513049431_P79qz3CLAXg8TMGVLx9t4phMqUixgRaN.jpg',
      'name': 'ZoomX Vaporfly',
      'desc': 'Running Shoes',
    },
     {
      'image': 'https://images.unsplash.com/photo-1600269452121-4f2416e55c28?q=80&w=1530&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'ZoomX Vaporfly',
      'desc': 'Running Shoes',
    },
  ];

  final List<Map<String, String>> womenProducts = [
    {
      'image': 'https://t3.ftcdn.net/jpg/12/85/63/36/240_F_1285633699_X0VXZkvUYcjRNVbSYEWAud4iIaAUlqRV.jpg',
      'name': 'Pegasus Fly',
      'desc': 'Training',
    },
    {
      'image': 'https://t4.ftcdn.net/jpg/03/33/21/99/240_F_333219955_0PCGgI2qAkSnbcc9CUIcHCUhj441hx9Y.jpg',
      'name': 'Air Max',
      'desc': 'New Trend',
    },
  ];

  final List<Map<String, String>> kidsProducts = [
    {
      'image': 'https://t4.ftcdn.net/jpg/06/34/25/91/240_F_634259110_eazYSk9hhmD0vnpJ440Xyvt4pVCmUhE1.jpg',
      'name': 'Kid Zoom Run',
      'desc': 'Kids Special',
    },
    {
      'image': 'https://t3.ftcdn.net/jpg/03/33/62/24/240_F_333622469_2cuhrHYatlAi9wfIwl586BoQL0XkJ17C.jpg',
      'name': 'Star Runner',
      'desc': 'Back to School',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
     final Size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset("assets/nikelogo3.png", height: Size.height/29),
            const SizedBox(width: 10),
            Image.asset("assets/nikelogo2.png", height: Size.height/29),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search, color: Colors.black),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          tabs: const [
            Tab(text: "Men"),
            Tab(text: "Women"),
            Tab(text: "Kids"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildGrid(menProducts),
          _buildGrid(womenProducts),
          _buildGrid(kidsProducts),
        ],
      ),

    );
  }

//   Widget _buildGrid(List<Map<String, String>> products) {
//   return GridView.builder(
//     padding: const EdgeInsets.all(12),
//     itemCount: products.length,
//     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       mainAxisSpacing: 8,
//       crossAxisSpacing: 8,
//       childAspectRatio: 1.5,
//     ),
//     itemBuilder: (context, index) {
//       final product = products[index];
//       return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           image: DecorationImage(
//             image: NetworkImage(product['image']!),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Align(
//           alignment: Alignment.bottomLeft,
//           child: Container(
//             width: double.infinity,
//             padding: const EdgeInsets.all(8),
//             decoration: const BoxDecoration(
//               color: Colors.black54,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(12),
//                 bottomRight: Radius.circular(12),
//               ),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   product['name']!,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   product['desc']!,
//                   style: const TextStyle(
//                     color: Colors.white70,
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }
  

  Widget _buildGrid(List<Map<String, String>> products) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔹 Product Grid
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(12),
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(product['image']!),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                 
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        product['desc']!,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),

        

       
        
        const SizedBox(height: 16),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              _buildBannerImage(
"https://images.unsplash.com/photo-1517757125958-27f3b42af477?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjExfHxuaWtlJTIwc2hvZXxlbnwwfHwwfHx8MA%3D%3D"              ),
              const SizedBox(height: 12),
              _buildBannerImage(
                "https://plus.unsplash.com/premium_photo-1685125885305-283d5dd0964f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjEyfHxuaWtlJTIwc2hvZXxlbnwwfHwwfHx8MA%3D%3D"
              ),
            ],
          ),
        ),
        
      ],
    ),
  );
}
Widget _buildBannerImage(String imageUrl) {
  return Container(
    height: 160,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
    ),
    child: const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "Nike Drop\nExclusive",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            height: 1.3,
          ),
        ),
      ),
    ),
  );
}



}
