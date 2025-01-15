import 'package:flutter/material.dart';
import 'package:mobile_app_week_6/welcome_page.dart';
import 'package:mobile_app_week_6/main_page2.dart';
import 'package:mobile_app_week_6/main_result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.pinkAccent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const WelcomePage2(title: 'Welcome'),
    const InputPage(),
    const DisplayPage(
      age: null,
      name: '',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: 'Input',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Display',
          ),
        ],
      ),
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:mobile_app_week_6/main_page2.dart';
import 'package:mobile_app_week_6/main_result_page.dart';
import 'package:mobile_app_week_6/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //build is render similar to react
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.pinkAccent),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
        ),
        initialRoute: '/welcome',
        routes: {
          '/': (context) => const WelcomePage2(title: 'Nav System'),
          '/main_page2': (context) => const InputPage(),
          '/main_result_page': (context) => const DisplayPage(),
        });
    // home: const WelcomePage2()); //Not use from now on because we use Material App(routes: ) now
  }
}*/

//Self learning=> Flutter bottom Navigation Bar



        /*home: Scaffold( //หน้าจริงๆเริ่มจากอันนี้
        appBar: AppBar(w
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SizedBox(width: 6,),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/800px-Cat_November_2010-1a.jpg',
                      height: 90,
                    ),
                    // SizedBox(width: 6,),
                  ],
                ),
              ),

              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
              ),

              const SizedBox(height: 10, width: 10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password'),
              ),

              Container(
                //margin: const EdgeInsets.all(10),
                //padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  /*boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],*/
                ),
                alignment: Alignment.centerRight, child: const Text('History'),
              ),
              const SizedBox(height: 10, width: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_alarm),
                  Expanded(
                    child: Text(
                      'Charging date-time จ่ายค่าชาร์จตามวันและเวลา',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),

              Card(
                color: Colors.red[100],
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: Column(
                    //use Column after child to add more child
                    children: [
                      const Text('999 THB'),
                      Image.network(
                        'https://cdn.corporatefinanceinstitute.com/assets/thai-baht.jpeg',
                        height: 160,
                      ),
                    ],
                  ),
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 80,
                  ),
                  Icon(
                    Icons.calendar_month,
                    size: 80,
                  ),
                  Icon(
                    Icons.calendar_month,
                    size: 80,
                  )
                ],
              ),

              const Image(
                image: AssetImage('assets/download.jpg'),
                width: 400,
              ),

              const SizedBox(
                height: 50,
              ), //increase distance between picture
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child:
              const Icon(Icons.shopping_cart), //Icons that program has for us
        ), //Button on the lower right of screen
      ),*/

/*
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 255, 119, 164))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CS app'),
        ),
        body: Text("Hello, World!"),
      ),
    ),
  );
}
*/

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pornpipat Counter:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/