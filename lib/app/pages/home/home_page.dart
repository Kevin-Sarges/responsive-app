import 'package:app_responsivo/app/pages/home/mobile/widgets/app_bar.dart';
import 'package:app_responsivo/app/pages/home/web/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? const PreferredSize(
                  preferredSize: Size(
                    double.infinity,
                    56,
                  ),
                  child: HomeAppBarMobile(),
                )
              : const PreferredSize(
                  preferredSize: Size(
                    double.infinity,
                    56,
                  ),
                  child: HomeAppBarWeb(),
                ),
          drawer: constraints.maxWidth > 800 ? null : const Drawer(),
        );
      },
    );
  }
}
