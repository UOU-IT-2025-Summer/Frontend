import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'router/app.router.dart';
import 'page/sidebar_layout.dart';
import 'page/homePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( //go_router 패키지 사용할 때 MaterialApp 다음에 .router 해줘야 됨.
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: appRouter, //이거 선언도 해줘야 됨
    );
  }
}