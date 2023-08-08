import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.purple,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            Center(
              child: Text('oi'),
            )
          ],
        ),
      ),
    );
  }
}
