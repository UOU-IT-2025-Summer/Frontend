// sidebar_layout.dart
import 'package:flutter/material.dart';
import 'sidebar.dart';

class SidebarLayout extends StatelessWidget {
  final Widget child;

  const SidebarLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          sidebar(),
          Expanded(child: child),
        ],
      ),
    );
  }
}