import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var ballnum = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text('Magic 8 Ball'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                ballnum = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballnum.png'),
          ),
        ),
      ),
    );
  }
}
