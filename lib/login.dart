import 'package:flutter/material.dart';
import 'register.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(labelText: '이메일'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(labelText: '비밀번호'),
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
                        child: Text('로그인', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => registerPage())
                                );
                                },
                              child: Text('회원가입', style: TextStyle(color: Colors.black)),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Text('비밀번호 찾기', style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

