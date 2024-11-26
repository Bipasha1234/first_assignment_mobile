import 'dart:math'; // For pi constant

import 'package:flutter/material.dart';

class AreaCircleScreen extends StatefulWidget {
  @override
  _AreaCircleScreenState createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  final TextEditingController radiusController = TextEditingController();
  double area = 0.0;

  // Function to calculate the area of the circle
  void calculateArea() {
    double radius = double.tryParse(radiusController.text) ?? 0.0;
    setState(() {
      area = pi * radius * radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Area of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: radiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Radius',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateArea,
              child: Text('Calculate Area'),
            ),
            SizedBox(height: 20),
            Text(
              'Area: ${area.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
