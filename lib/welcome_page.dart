import 'package:flutter/material.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key, required String title});

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
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

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Welcome to Page',
              style: TextStyle(fontSize: 24),
            ),
            /*ElevatedButton(
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
            ),*/
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart), //Icons that program has for us
      ), //Button on the lower right of screen
    );
  }
}
