import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar, part of the scaffold
      appBar: AppBar(
        // const for text cause its not chaning
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: const Text('Counter Screen',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
      ),
      body: const Center(
        //Column recives multiple childs
        child: Column(
          // change colum direction
          mainAxisAlignment: MainAxisAlignment.center,
          //Here we can use , multiple widgets
          children: [
            Text(
              '110',
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Clicks',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
