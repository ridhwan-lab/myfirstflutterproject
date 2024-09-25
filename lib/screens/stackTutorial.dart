import 'package:flutter/material.dart';

class StackTutorial extends StatelessWidget {
  const StackTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Tutorial'),
      ),
      body: Center(
        child: Container(
          width: deviceWidth,
          height: 700,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 50,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: 50,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}