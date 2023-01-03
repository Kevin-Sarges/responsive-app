import 'package:app_responsivo/app/pages/home/widgets/cart_section_widget.dart';
import 'package:flutter/material.dart';

class TopSectionTablet extends StatelessWidget {
  const TopSectionTablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.network(
              'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: CartSectionWidget(
              width: 350,
              fontSizeTitle: 35,
              fontSizedSubTitle: 15,
            ),
          )
        ],
      ),
    );
  }
}
