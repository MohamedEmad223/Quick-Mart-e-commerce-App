import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnBoarding Screen'),
      ),
      body: const Center(
        child: Text('OnBoarding Screen'),
      ),
    );
  }
}
