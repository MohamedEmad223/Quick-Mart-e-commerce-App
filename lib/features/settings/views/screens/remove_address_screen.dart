import 'package:flutter/material.dart';

class RemoveAddressScreen extends StatelessWidget {
  const RemoveAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Text('Remove Address'),
        ],
      ),
    );
  }
}
