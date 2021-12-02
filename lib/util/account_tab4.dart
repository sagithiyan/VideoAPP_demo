import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(0.1),
          child: Container(
            color: Colors.green[100],
            child: Image.network("https://picsum.photos/250?image=9"),
          ),
        );
      },
    );
  }
}
