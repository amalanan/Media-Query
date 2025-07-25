import 'package:flutter/material.dart';

class IntrinsicWidgetExample extends StatelessWidget {
  const IntrinsicWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(textAlign: TextAlign.center, 'Hello'), Text(textAlign: TextAlign.center, 'Hello'),Text(textAlign: TextAlign.center, 'Hello'),Text(textAlign: TextAlign.center, 'Hello'),Text(textAlign: TextAlign.center, 'Hello'),Text(textAlign: TextAlign.center, 'Hello'),Text(textAlign: TextAlign.center, 'Hello'),Text(textAlign: TextAlign.center, 'Hello'), Text(textAlign: TextAlign.center, 'Hello'),Text(textAlign: TextAlign.center, 'Hello')],
                      ),
                    ),
                  ),
                  SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(height: 100, color: Colors.black),
                        ),
                        SizedBox(height: 15),
                        Expanded(
                          child: Container(height: 100, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
