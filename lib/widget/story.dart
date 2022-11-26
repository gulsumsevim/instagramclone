import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  StoryPage({super.key});

  List<dynamic> story = [
    'assets/a.png',
    'assets/a1.png',
    'assets/a2.png',
    'assets/a3.png',
    'assets/a4.png',
    'assets/a5.png',
    'assets/a6.png',
    'assets/a7.png',
    'assets/a8.png',
    'assets/a9.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(10, (index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF9B2282),
                                  Color(0xFFEEA863)
                                ])),
                        child: Container(
                          width: 65,
                          height: 65,
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, spreadRadius: 1),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('${story[index]}'),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('data'),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
