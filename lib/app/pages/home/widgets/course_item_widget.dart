import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return const AutoSizeText(
                'Criando Apps para Android e IOS com Flutter',
                minFontSize: 3,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        const Text(
          'Daniel Ciolfi',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const Text(
          '22,90',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
