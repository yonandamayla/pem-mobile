import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo:
          'https://images.unsplash.com/photo-1585238342028-78f9e4b4b3a1?auto=format&fit=crop&w=800&q=60',
      stock: 10,
      rating: 4.2,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo:
          'https://images.unsplash.com/photo-1604908177522-7f9d5b2c9d6e?auto=format&fit=crop&w=800&q=60',
      stock: 20,
      rating: 4.6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopping List')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(
                  item: item,
                  onTap: () =>
                      Navigator.pushNamed(context, '/item', arguments: item),
                );
              },
            ),
          ),
          Footer(name: 'Yonanda Mayla Rusdiaty', nim: '23417660184'),
        ],
      ),
    );
  }
}
