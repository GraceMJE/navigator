import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fluuter에서 화면 이동하기')
          // 1. 화면 내부 상태관리로 이동
          // 2. 네비게이터 객체 활용
          // 3. 외부라이브러리 활용
          ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
        currentIndex: index,
        onTap: (newIndex) => setState(() {
          index = newIndex;
        }),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return Center(
          child: Icon(
            Icons.search,
            size: 100,
          ),
        );
      case 2:
        return Center(
          child: Icon(
            Icons.person,
            size: 100,
          ),
        );
      case 0:
      default:
      return Center(child: Icon(Icons.home, size: 100,),);
    }
  }
}

