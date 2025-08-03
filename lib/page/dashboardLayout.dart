import 'package:flutter/material.dart';
import 'sidebar.dart';

class SidebarLayout extends StatefulWidget {
  final Widget child;

  const SidebarLayout({super.key, required this.child});

  @override
  State<SidebarLayout> createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("테스트"),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(isCollapsed ? Icons.chevron_right : Icons.chevron_left),
          onPressed: () {
            setState(() {
              isCollapsed = !isCollapsed;
            });
          },
        ),
      ),
      body: Row(
        children: [
          // 슬라이드 제거: Container만 사용
          Container(
            width: isCollapsed ? 0 : 240,
            child: Sidebar(isCollapsed: isCollapsed),
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}