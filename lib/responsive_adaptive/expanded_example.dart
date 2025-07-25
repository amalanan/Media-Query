import 'package:flutter/material.dart';
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
            color: Colors.black12,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
            color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
