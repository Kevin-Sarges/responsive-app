import 'package:app_responsivo/app/pages/home/mobile/widgets/app_bar.dart';
import 'package:app_responsivo/app/pages/home/sections/advantages_section.dart';
import 'package:app_responsivo/app/pages/home/web/widgets/app_bar.dart';
import 'package:app_responsivo/app/pages/home/sections/top_sections.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: const Color(0xFF181818),
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
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1300,
              ),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
