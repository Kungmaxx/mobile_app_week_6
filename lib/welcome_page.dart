import 'package:flutter/material.dart';
import 'package:mobile_app_week_6/main_page2.dart';
import 'package:mobile_app_week_6/main_result_page.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key, required String title});

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  int _currentIndex = 0; // ใช้สำหรับติดตามหน้าใน BottomNavigationBar

  final List<Widget> _pages = [
    const Center(child: Text('หน้า Welcome', style: TextStyle(fontSize: 24))),
    const InputPage(),
    const DisplayPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Or => Scaffold
      appBar: AppBar(
        title: const Text('CS app lol'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('leading icon pressed');
          },
        ), //Add AppBar on the upper left on screen
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              debugPrint('leading actions icon pressed');
              // You can also put Navigate here
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              debugPrint('leading info icon pressed');
            },
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Welcome to Page',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InputPage()),
                );
              },
              child: const Text(
                'Page2',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ), // แสดงหน้าตามแท็บที่เลือก

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index; // เปลี่ยนหน้าเมื่อผู้ใช้แตะแท็บ
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Welcome',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: 'Input',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restore_outlined),
            label: 'Result',
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart), //Icons that program has for us
      ), //Button on the lower right of screen
    );
  }
}
