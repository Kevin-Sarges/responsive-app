import 'package:app_responsivo/app/pages/home/widgets/cart_section_widget.dart';
import 'package:flutter/material.dart';

class TopSectionWeb extends StatelessWidget {
  const TopSectionWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.2,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.network(
              'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 50,
            top: 50,
            child: CartSectionWidget(
              width: 450,
              fontSizeTitle: 40,
              fontSizedSubTitle: 18,
            ),
          ),
        ],
      ),
    );
  }
}
