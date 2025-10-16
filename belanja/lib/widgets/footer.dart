import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String name;
  final String nim;

  const Footer({Key? key, required this.name, required this.nim})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$name - $nim', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
