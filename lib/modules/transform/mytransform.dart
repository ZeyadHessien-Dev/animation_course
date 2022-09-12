import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  var rotVal = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Transform(
              transform: Matrix4.rotationZ(3.14 / 1)..scale(1.1)..translate(-1.0),
              origin: const Offset(100, -50),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.deepOrange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}