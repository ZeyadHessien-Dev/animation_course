import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  var rotVal = 0.0;

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

            // child: Transform.scale(
            //   scale: 1.1,
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     color: Colors.deepOrange,
            //   ),
            // ),



            // child: Transform.translate(
            //   // Positive number [Right and Top]
            //   offset: const Offset(100, 0),
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     color: Colors.deepOrange,
            //   ),
            // ),
            child: Transform.rotate(
              angle: rotVal,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.deepOrange,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Slider(
            value: rotVal,
            onChanged: (value) {
              setState(() {
                rotVal = value;
              });
            },
            max: 2 * 3.14,
            min: 0,
          ),
        ],
      ),
    );
  }
}


