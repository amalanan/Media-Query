import 'package:flutter/material.dart';
import 'package:media_query/responsive_adaptive/Intrinsic_widget_example.dart';
import 'package:media_query/responsive_adaptive/aspect_ratio_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntrinsicWidgetExample(),
    );
  }
}
