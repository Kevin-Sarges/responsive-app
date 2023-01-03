import 'package:app_responsivo/app/pages/home/web/widgets/web_appbar_resposive_content.dart';
import 'package:flutter/material.dart';

class HomeAppBarWeb extends StatelessWidget {
  const HomeAppBarWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Row(
            children: const [
              FlutterLogo(),
              Text('Flutter'),
            ],
          ),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarReponsivedContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 10,
              ),
              side: const BorderSide(
                color: Color(0xFFFFFFFF),
              ),
            ),
            child: const Text(
              'Fazer login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: 19,
                horizontal: 10,
              ),
            ),
            child: const Text(
              'Cadastre-se',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
