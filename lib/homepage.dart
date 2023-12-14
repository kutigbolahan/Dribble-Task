import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 28, 46, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 28, 46, 1),
        leading: const Icon(
          Icons.person,
          color: Colors.white,
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(24, 40, 66, 1),
                borderRadius: BorderRadius.circular(30)),
            child: const Icon(
              CupertinoIcons.bell,
              color: Colors.white,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(24, 40, 66, 1),
                borderRadius: BorderRadius.circular(30)),
            child: const Icon(
              CupertinoIcons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Column(
        children: <Widget>[
          Text('Good\nMorning',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 44,
                  fontWeight: FontWeight.bold)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        tooltip: 'Add',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
