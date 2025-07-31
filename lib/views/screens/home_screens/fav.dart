import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size=MediaQuery.of(context).size;
    final List<Map<String, String>> favItems = [
      {
        "title": "Nike SB Dunk Low Pro",
        "image": "https://t4.ftcdn.net/jpg/04/79/11/23/240_F_479112366_dku6Ufwd9OVnRB3AZxonMgRzuZYeTTYY.jpg",
        "price": "₹ 23,795.00",
        "label": "Bestseller",
      },
      {
        "title": "Nike Alphafly 3 Premium",
        "image": "https://t4.ftcdn.net/jpg/03/54/69/59/240_F_354695920_fM951khS1fJe0DtXkl2E70y1y513Jj1p.jpg",
        "price": "₹ 23,795.00",
        "label": "Bestseller",
      },
      {
        "title": "Nike Air Zoom Maxfly",
        "image": "https://t4.ftcdn.net/jpg/04/73/22/89/240_F_473228947_tl0y95DrjBkE94FO1SPQwjszzd2F4MpN.jpg",
        "price": "₹ 23,795.00",
        "label": "",
      },
      {
        "title": "Nike Alphafly 3 Premium",
        "image": "https://t3.ftcdn.net/jpg/05/16/52/90/240_F_516529011_GiqUBF7unVPKx2kcoBoGVmYowgqwZxHs.jpg",
        "price": "₹ 23,795.00",
        "label": "",
      },
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: favItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final item = favItems[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[100],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                        child: Image.network(
                          item['image']!,
                          height: Size.height/4.6,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        top: 8,
                        right: 8,
                        child: Icon(Icons.favorite, color: Colors.orange),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (item['label']!.isNotEmpty)
                          Text(item['label']!, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12)),
                        Text(item['title']!, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                        Text("MRP : ${item['price']}", style: const TextStyle(fontSize: 12, color: Colors.black54)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
