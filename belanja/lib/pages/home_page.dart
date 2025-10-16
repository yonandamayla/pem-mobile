import 'package:flutter/material.dart';
import '../models/item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar', 
      price: 5000, 
      photo: 'assets/images/sugar.jpg',
      stok: 25,
      rating: 4.5,
    ),
    Item(
      name: 'Salt', 
      price: 2000, 
      photo: 'assets/images/salt.jpg',
      stok: 30,
      rating: 4.2,
    ),
    Item(
      name: 'Rice', 
      price: 15000, 
      photo: 'assets/images/rice.jpg',
      stok: 10,
      rating: 4.8,
    ),
    Item(
      name: 'Oil', 
      price: 25000, 
      photo: 'assets/images/oil.jpg',
      stok: 15,
      rating: 4.3,
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text('Price: Rp ${item.price}'),
                            Text('Stock: ${item.stok}'),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.orange, size: 16),
                                Text(' ${item.rating}'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}