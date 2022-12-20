import 'package:flutter/material.dart';

import 'account_tab1.dart';
import 'account_tab2.dart';
import 'account_tab3.dart';

class HesapPage extends StatelessWidget {
  const HesapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '350',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Gönderi')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '3500',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Takipçi')
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '35',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Takip')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Gülsüm Sevim',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Bilgisayar Mühendisi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Center(child: Text('Edit Profile')),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_3x3_outlined,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
                child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
