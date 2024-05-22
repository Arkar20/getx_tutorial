import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShoppingCartPage Page'),
      ),
      body: const Center(
        child: Text(
          'ShoppingCartPage page',
          style: TextStyle(fontSize: 34),
        ),
      ),
    );
  }
}
