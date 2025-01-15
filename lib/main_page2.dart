import 'package:flutter/material.dart';
import 'package:mobile_app_week_6/main_result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //String _output = '';
  final _textController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    //_output = 'Enter your name';
  }

  @override
  void dispose() {
    _textController.dispose();
    _ageController.dispose();
    super.dispose();
  }

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
            TextField(
              keyboardType: TextInputType.number,
              controller: _ageController,
              decoration: const InputDecoration(
                  hintText: 'Enter Age', labelText: 'Age'),
            ),
            ElevatedButton(
              onPressed: () {
                //String input = _textController.text;
                int inputAge = int.parse(_ageController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayPage(
                      name: 'Pornpipat',
                      age: inputAge,
                    ),
                  ),
                );
              },
              child: const Text(
                'Enter',
                style: TextStyle(fontSize: 24),
              ),
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
