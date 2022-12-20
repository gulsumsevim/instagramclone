import 'package:flutter/material.dart';

class KesfetPage extends StatelessWidget {
  const KesfetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 21,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(color: Colors.deepPurple),
        );
      },
    );
  }
}
