import 'dart:async';
import 'package:flutter/material.dart';

class SimpleDatePickerWidget extends StatefulWidget {
  const SimpleDatePickerWidget({Key? key, required this.title})
    : super(key: key);

  final String title;

  @override
  _SimpleDatePickerWidgetState createState() => _SimpleDatePickerWidgetState();
}

class _SimpleDatePickerWidgetState extends State<SimpleDatePickerWidget> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  //  Initial SelectDate Flutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime Final Picked
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                // ignore: avoid_print
                print(
                  selectedDate.day + selectedDate.month + selectedDate.year,
                ),
              },
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}
