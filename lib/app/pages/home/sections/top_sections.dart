import 'package:app_responsivo/app/pages/home/mobile/section/top_section_mobile.dart';
import 'package:app_responsivo/app/pages/home/tablet/section/top_section_tablet.dart';
import 'package:app_responsivo/app/pages/home/web/section/top_section_web.dart';
import 'package:app_responsivo/app/utils/mobile_breakpoints.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidhtContainer = constraints.maxWidth;

        if (maxWidhtContainer >= BreakPoints.tabletBreakpoint) {
          return const TopSectionWeb();
        }

        if (maxWidhtContainer >= BreakPoints.moblieBreakpoint) {
          return const TopSectionTablet();
        }

        return const TopSectionMobile();
      },
    );
  }
}
