import 'package:app_responsivo/app/pages/home/widgets/course_item_widget.dart';
import 'package:app_responsivo/app/utils/mobile_breakpoints.dart';
import 'package:flutter/material.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal:
                constraints.maxWidth >= BreakPoints.tabletBreakpoint ? 0 : 16,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CourseItemWidget();
          },
        );
      },
    );
  }
}
