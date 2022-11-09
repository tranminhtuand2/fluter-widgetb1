import 'package:flutter/material.dart';

class listviewdemo extends StatefulWidget {
  listviewdemo({super.key});

  @override
  State<listviewdemo> createState() => _listviewdemoState();
}

class _listviewdemoState extends State<listviewdemo> {
  int countadd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LISTVIEW")),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 200,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Listbuider(),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("back page 1")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      countadd++;
                      entries.add(countadd.toString());
                      colorCodes.add(400 - countadd * 100);
                    });
                  },
                  child: const Text("add item")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (countadd != 0) {
                        countadd--;
                        entries.removeAt(0);
                        colorCodes.removeAt(0);
                      }
                    });
                  },
                  child: const Text("remove item")),
            ],
          )
        ],
      )),
    );
  }

  List<String> entries = <String>['A', 'B', 'C'];

  List<int> colorCodes = <int>[600, 500, 400];

  Widget Listbuider() {
    return Container(
      height: 200,
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.green[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          }),
    );
  }
}
