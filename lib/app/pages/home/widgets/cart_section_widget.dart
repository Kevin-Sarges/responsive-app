// ignore_for_file: must_be_immutable

import 'package:app_responsivo/app/pages/home/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class CartSectionWidget extends StatelessWidget {
  CartSectionWidget({
    Key? key,
    required this.width,
    required this.fontSizeTitle,
    required this.fontSizedSubTitle,
  }) : super(key: key);

  double width;
  double fontSizeTitle;
  double fontSizedSubTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Text(
              'Lorem Ipsum is simply',
              style: TextStyle(
                fontSize: fontSizeTitle,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it',
              style: TextStyle(
                fontSize: fontSizedSubTitle,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
