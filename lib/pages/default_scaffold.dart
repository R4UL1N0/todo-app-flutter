import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  final Widget child;
  const DefaultScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
