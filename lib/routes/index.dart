import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Login/index.dart';
import 'package:hm_shop/pages/Main/index.dart';

Widget getRouteWidget() {
  return MaterialApp(
    // 命名路由
    routes: getRoutes(),
    initialRoute: '/',
  );
}

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/': (context) => MainPage(), // 主页路由
    '/login': (context) => const LoginPage(), // 登录页路由
  };
}
