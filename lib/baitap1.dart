import 'dart:math';

import 'package:flutter/material.dart';

class baitap1 extends StatelessWidget {
  const baitap1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: rowbuilder(
                    Kichthuoc1: 2,
                    Kichthuoc: 1,
                    hinhanh: 'assets/images/zoro5.jpg',
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Colors.black,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: rowbuilder(
                    Kichthuoc: 1,
                    Kichthuoc1: 1,
                    hinhanh: 'assets/images/zoro6.jpg',
                  ),
                ),
              ),
              Container(
                height: 1,
                color: Colors.black,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: rowbuilder(
                      Kichthuoc: 2,
                      Kichthuoc1: 1,
                      hinhanh: 'assets/images/zoro5.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class rowbuilder extends StatelessWidget {
  const rowbuilder({
    Key? key,
    required this.Kichthuoc,
    required this.Kichthuoc1,
    required this.hinhanh,
  }) : super(key: key);
  final int Kichthuoc;
  final int Kichthuoc1;
  final String hinhanh;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: Kichthuoc,
          child: Image.asset(
            hinhanh,
          ),
        ),
        Expanded(
          flex: Kichthuoc1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                textAlign: TextAlign.center,
                " Lap trinh flutter",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
                textAlign: TextAlign.center,
                " thuc chien du an app moblie 2022",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
