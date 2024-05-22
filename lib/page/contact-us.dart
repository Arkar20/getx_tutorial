import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us Page'),
      ),
      body: const Center(
        child: Text(
          'Contact Us page',
          style: TextStyle(fontSize: 34),
        ),
      ),
    );
  }
}
