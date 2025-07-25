import 'package:flutter/material.dart';

class FittedBoxExample extends StatefulWidget {
  const FittedBoxExample({super.key});

  @override
  State<FittedBoxExample> createState() => _FittedBoxExampleState();
}

class _FittedBoxExampleState extends State<FittedBoxExample> {
  var images = [
    'assets/images/5.jpg',
    'assets/images/5.jpg',
    'assets/images/5.jpg',
    'assets/images/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black
      ),

      body: Padding(
        padding: EdgeInsets.all(7),


        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return
              FittedBox(
                  child: Image.asset(images[index]));
          },
        ),),
    );
  }
}
