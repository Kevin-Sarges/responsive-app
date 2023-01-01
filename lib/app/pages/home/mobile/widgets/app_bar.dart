import 'package:flutter/material.dart';

class HomeAppBarMobile extends StatelessWidget {
  const HomeAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FlutterLogo(),
          Text('Flutter'),
        ],
      ),
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
