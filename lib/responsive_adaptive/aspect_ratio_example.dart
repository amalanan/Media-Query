import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio:1,
          child: Container(
            color: Colors.red,
            width: MediaQuery.sizeOf(context).width,
          ),
        ),
      ),
    );
  }
}
