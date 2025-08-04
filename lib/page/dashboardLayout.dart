import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'sidebar.dart';

class SidebarLayout extends StatefulWidget {
  final Widget child;

  const SidebarLayout({super.key, required this.child});

  @override
  State<SidebarLayout> createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  bool isCollapsed = false;

  // 로그인 상태 변수
  bool isLoggedIn = false;
  String userName = '다연';

  void handleLogout() {
    setState(() {
      isLoggedIn = false;
    });
  }

  void handleLogin() {
    setState(() {
      isLoggedIn = true;
      userName = '다연';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("테스트"),
        backgroundColor: Colors.green[700],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            setState(() {
              isCollapsed = !isCollapsed;
            });
          },
        ),
        actions: [
          isLoggedIn
              ? Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mypage');
                },
                child: Text(
                  '$userName (마이페이지)',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: handleLogout,
                child: const Text(
                  '로그아웃',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
              : Row(
            children: [
              TextButton(
                onPressed: () => context.go('/login'),
                child: const Text(
                  '로그인',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () => context.go('/register'),
                child: const Text(
                  '회원가입',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Row(
        children: [
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