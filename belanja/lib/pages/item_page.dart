import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(itemArgs.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: itemArgs.photo,
              child: Image.network(
                itemArgs.photo,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemArgs.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rp ${itemArgs.price}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(itemArgs.rating.toString()),
                      SizedBox(width: 16),
                      Text('Stock: ${itemArgs.stock}'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Deskripsi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ini adalah deskripsi singkat produk ${itemArgs.name}. Ubah sesuai kebutuhan.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
