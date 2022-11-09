import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget/demolistview.dart';

class bt2 extends StatefulWidget {
  const bt2({super.key});

  @override
  State<bt2> createState() => _bt2State();
}

class _bt2State extends State<bt2> {
  TextEditingController _number_a = TextEditingController();
  TextEditingController _number_b = TextEditingController();
  double ketqua = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("bai tap 2"),
                Image.asset(
                  'assets/images/zoro5.jpg',
                  height: 200,
                  width: 200,
                ),
                TextFormField(
                  controller: _number_a,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "nhap so a"),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                TextFormField(
                  controller: _number_b,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "nhap so b"),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text("ket qua:$ketqua"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        try {
                          double a = double.parse(_number_a.text);
                          double b = double.parse(_number_b.text);
                          ketqua = a + b;
                          setState(() {});
                        } catch (e) {
                          print('object');
                          ScaffoldMessenger.of(context).showSnackBar(
                              new SnackBar(
                                  content: new Text(
                                      "vui long dien so vao o trong")));
                        }
                      },
                      child: Text("+"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        try {
                          double a = double.parse(_number_a.text);
                          double b = double.parse(_number_b.text);
                          ketqua = a - b;
                          setState(() {});
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              new SnackBar(
                                  content: new Text(
                                      "vui long dien so vao o trong")));
                        }
                      },
                      child: Text("-"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        try {
                          double a = double.parse(_number_a.text);
                          double b = double.parse(_number_b.text);
                          ketqua = a * b;
                          setState(() {});
                        } catch (e) {
                          print('object');
                          ScaffoldMessenger.of(context).showSnackBar(
                              new SnackBar(
                                  content: new Text(
                                      "vui long dien so vao o trong")));
                        }
                      },
                      child: Text("*"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        try {
                          double a = double.parse(_number_a.text);
                          double b = double.parse(_number_b.text);
                          ketqua = a / b;
                          setState(() {});
                        } catch (e) {
                          print('object');
                          ScaffoldMessenger.of(context).showSnackBar(
                              new SnackBar(
                                  content: new Text(
                                      "vui long dien so vao o trong")));
                        }
                      },
                      child: const Text("/"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("page 2");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => listviewdemo(),
                          ),
                        );
                      },
                      child: const Text("[page 2]"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
