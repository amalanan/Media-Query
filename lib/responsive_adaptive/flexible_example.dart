import 'package:flutter/material.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Flexible(child: FittedBox(child: Icon(Icons.ac_unit, size: 300))),
          Expanded(child: Container(height: 150, color: Colors.green, child: FittedBox(child: Icon(Icons.abc), fit: BoxFit.scaleDown,),)),
          // it became bigger because of the fittedbox inside the expanded,, so i write fit: BoxFit.scaleDown to let it get smaller
          Container(height: 150, color: Colors.black12),

        ],
      ),
    );
  }
}
