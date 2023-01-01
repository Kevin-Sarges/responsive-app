import 'package:flutter/material.dart';

class HomeAppBarMobile extends StatelessWidget {
  const HomeAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text('AppBar Mobile'),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }
}
