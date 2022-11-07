import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
  TextEditingController demo = TextEditingController();
  String text = '';
  Color? color;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //initState
  //lưu dữ liệu khi thực hiện các thao tác
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  //didChangeDependencies
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  //dispose
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  //deactivate
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'vui long an vao:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: TextField()),
                    const SizedBox(
                      width: 16,
                    ),
                    Image.network(
                      'https://a.cdn-hotels.com/gdcs/production154/d1245/0a3c326f-cedf-4cf9-ada2-71f7517d0a09.jpg',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: demo,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('nut da duoc bam')));

                      setState(() {
                        demo.text;
                      });
                    },
                    child: const Text("click me!")),
                Text(
                  demo.text,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _incrementCounter();

          setState(() {
            _incrementCounter();
            if (_counter % 2 == 0) {
              color = Color.fromARGB(255, 166, 40, 40);
            } else {
              color = Colors.amber;
            }
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.plus_one),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
