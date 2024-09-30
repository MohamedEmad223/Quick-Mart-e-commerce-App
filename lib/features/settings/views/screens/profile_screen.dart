import 'package:flutter/material.dart';

import '../widgets/container_body_widgets.dart';
import '../widgets/head_widgets_of_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                HeadWidgetsOfProfileScreen(),
              ],
            ),
            Positioned(bottom: 10, child: ContainerBodyWidgets()),
          ],
        ),
      ),
    );
  }
}
