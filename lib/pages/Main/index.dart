import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, String>> _tabList = [
    {
      'icon': 'lib/assets/tabs/home.png',
      'active_icon': 'lib/assets/tabs/home_active.png',
      "text": "首页",
    },
    {
      'icon': 'lib/assets/tabs/category.png',
      'active_icon': 'lib/assets/tabs/category_active.png',
      "text": "分类",
    },
    {
      'icon': 'lib/assets/tabs/cart.png',
      'active_icon': 'lib/assets/tabs/cart_active.png',
      "text": "购物车",
    },
    {
      'icon': 'lib/assets/tabs/member.png',
      'active_icon': 'lib/assets/tabs/member_active.png',
      "text": "我的",
    },
  ];
  List<BottomNavigationBarItem> _getTabBarWidgets() {
    return List.generate(_tabList.length, (index) {
      final item = _tabList[index];
      return BottomNavigationBarItem(
        icon: Image.asset(item['icon']!, width: 30, height: 30),
        activeIcon: Image.asset(item['active_icon']!, width: 30, height: 30),
        label: item['text'],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Main Page')),
      bottomNavigationBar: BottomNavigationBar(items: _getTabBarWidgets()),
    );
  }
}
