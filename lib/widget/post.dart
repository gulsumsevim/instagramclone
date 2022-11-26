import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image:
                          DecorationImage(image: AssetImage('assets/a.png'))),
                ),
                title: Text('Can'),
                subtitle: Text('bla bla'),
                trailing: Icon(Icons.more_vert),
              ),
              Container(
                height: 400,
              )
            ],
          );
        });
  }
}
