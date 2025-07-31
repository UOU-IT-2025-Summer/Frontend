import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => context.go('/register'), //go_router 패키지 사용
            child: const Text('회원가입'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/login'),
            child: const Text('로그인'),
          ),
        ],
      ),
    );
  }
}