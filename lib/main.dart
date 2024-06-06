import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Sandbox'), backgroundColor: Colors.grey),
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, color: Colors.green, child: Text('one')),
            Container(width: 200, color: Colors.yellow, child: Text('two')),
            Container(width: 300, color: Colors.red, child: Text('three'))
          ]),
    );
  }
}
