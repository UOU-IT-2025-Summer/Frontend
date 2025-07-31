import 'package:flutter/material.dart';

class findPassword extends StatefulWidget {
  const findPassword({super.key});

  @override
  State<findPassword> createState() => _findPasswordState();
}

class _findPasswordState extends State<findPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '비밀번호 찾기',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(labelText: '이메일(울산대 계정)'),
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('비밀번호 찾기', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      );
    }
}

