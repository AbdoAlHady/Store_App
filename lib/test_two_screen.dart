import 'package:flutter/material.dart';

class TextTwoScreen extends StatelessWidget {
  const TextTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Two Screen'),
      ),
      body: const Center(
        child:Text('Test Two Screen'),
      ),
    );
  }
}