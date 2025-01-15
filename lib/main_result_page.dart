import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String? name;
  final int? age;

  const DisplayPage({super.key, this.name, this.age});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
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
          children: [
            const SizedBox(
              height: 20,
            ),
            Text('Hi, ${widget.name} \nAge:${widget.age}'),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: const Text("Back"),
            ),
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
