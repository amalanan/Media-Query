import 'package:flutter/material.dart';
import 'dart:developer';

class MediaQueryTest extends StatelessWidget {
  const MediaQueryTest({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    log(height.toString());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              height: height * 0.2,
              width: 200,
            ),
            Container(color: Colors.black, height: height * 0.2, width: 200),
            Container(color: Colors.red, height: height * 0.2, width: 200),
          ],
        ),
      ),
    );
  }
}
