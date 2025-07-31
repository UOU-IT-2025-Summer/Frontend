import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../page/login.dart';
import '../page/register.dart';
import '../page/sidebar_layout.dart';
import '../page/homePage.dart';
import '../page/findPassword.dart';

final GoRouter appRouter = GoRouter( //appRouter 이라는 이름으로 GoRouter 객체 생성(라우팅 규칙 생성)
  routes: [ //여기에 여러 개의 경로 등록
    GoRoute(
      path: '/',
      builder: (context, state) => SidebarLayout( //builder은 그 주소 값으로 갔을 때 어떤 페이지를 보여줄 지 결정
        child: const MyHomePage(title: 'Flutter Demo Home Page'), //사이드 바 오른 쪽에 어떤 내용을 보여줄 지 결정
      ),
    ),
    GoRoute(
      path: '/login', //사용자가 이동할 주소
      builder: (context, state) => SidebarLayout(child: loginPage()), //그래서 로그인 주소로 가면 왼쪽에 사이드 바 오른쪽에 로그인 페이지
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => SidebarLayout(child: registerPage()),
    ),
    GoRoute(
      path: '/findPassword',
      builder: (context, state) => SidebarLayout(child: findPassword()),
    ),
  ],
);