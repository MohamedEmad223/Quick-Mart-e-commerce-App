import 'package:flutter/material.dart';

class AddAdressScreen extends StatelessWidget {
  const AddAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Text('Add Adress'),
        ],
      ),
    );
  }
}