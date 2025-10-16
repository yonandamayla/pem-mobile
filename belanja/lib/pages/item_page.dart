import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item Detail')),
      body: Center(child: Text('Detail Page', style: TextStyle(fontSize: 24))),
    );
  }
}
