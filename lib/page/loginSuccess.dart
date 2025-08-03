import 'package:flutter/material.dart';

class loginSuccess extends StatefulWidget {
  const loginSuccess({super.key});

  @override
  State<loginSuccess> createState() => _loginSuccessState();
}

class _loginSuccessState extends State<loginSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '로그인 성공',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
