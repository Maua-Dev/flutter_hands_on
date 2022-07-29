import 'package:flutter/material.dart';

import 'course_widget.dart';

class GridCoursesWidget extends StatelessWidget {
  const GridCoursesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, mainAxisSpacing: 8, crossAxisSpacing: 8),
        itemBuilder: (context, index) => CourseItem());
  }
}
