import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  String? _errorMessage;

  void _checkPasswordMatch() {
    final password = _passwordController.text;
    final confirm = _confirmController.text;

    setState(() {
      if (confirm.isEmpty) {
        _errorMessage = null;
      } else if (confirm != password) {
        _errorMessage = '비밀번호가 일치하지 않습니다.';
      } else {
        _errorMessage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '회원가입',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(labelText: '이름'),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(labelText: '이메일(울산대 계정)'),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: '비밀번호'),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: _confirmController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: '비밀번호 확인'),
                  onChanged: (_) => _checkPasswordMatch(),
                ),
              ),
              if (_errorMessage != null)
                Container(
                  width: 300,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    _errorMessage!,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    if (_errorMessage == null) {
                      print("회원가입 성공");
                    } else {
                      print("비밀번호가 일치하지 않음");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('회원가입', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}