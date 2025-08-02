import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../page/login.dart';
import '../page/register.dart';
import '../page/sidebar_layout.dart';
import '../page/homePage.dart';
import '../page/findPassword.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/', // 선택 사항
  routes: [
    // 공통 레이아웃 ShellRoute
    ShellRoute(
      builder: (context, state, child) {
        return SidebarLayout(child: child); // 공통 레이아웃 정의
      },
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => NoTransitionPage(child: MyHomePage(title: 'Flutter Demo Home Page'))
          // builder: (context, state) =>
          // const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
        GoRoute(
          path: '/login',
          pageBuilder: (context, state) => NoTransitionPage(child: loginPage()),
          // builder: (context, state) => loginPage(),
        ),
        GoRoute(
          path: '/register',
          pageBuilder: (context, state) => NoTransitionPage(child: registerPage()),
          // builder: (context, state) => registerPage(),
        ),
        GoRoute(
          path: '/findPassword',
          pageBuilder: (context, state) => NoTransitionPage(child: findPassword()),
          // builder: (context, state) => findPassword(),
        ),
      ],
    ),
  ],
);