import 'package:flutter/material.dart';

class WebAppBarReponsivedContent extends StatelessWidget {
  const WebAppBarReponsivedContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(
                      color: const Color(0xFF757575),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              constraints.maxWidth >= 400
                  ? TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Aprender',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
              constraints.maxWidth >= 500
                  ? TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Flutter',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }
}
