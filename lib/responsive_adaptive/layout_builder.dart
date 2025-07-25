import 'dart:developer';

import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrains) {
          log(constrains.maxWidth.toString());
          if (constrains.maxWidth <= 400) {
            //400 is the breakpoint of the mobile
            return MobileLayout();
          } else if (constrains.maxWidth > 400 && constrains.maxWidth <= 1000) {
            //1000  is the breakpoint of the ipad
            return Text('ipad layout');
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }

  ListView MobileLayout() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DetailsView(number: index + 1);
                },
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 16, right: 16, left: 16),
            color: Colors.green,
            child: ListTile(title: Text('${index + 1}')),
          ),
        );
      },
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(number.toString(), style: TextStyle(fontSize: 36)),
      ),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                 number = index +1;
                 setState(() {

                 });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 16, right: 16, left: 16),
                  color: Colors.green,
                  child: ListTile(title: Text('${index + 1}')),
                ),
              );
            },
          ),
        ),
        Expanded(child: SizedBox(child: Center(child: Text(number.toString())))),
      ],
    );
  }
}
