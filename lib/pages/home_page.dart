import 'package:flutter/material.dart';
import 'package:flutter_hands_on/utils.dart';
import 'package:flutter_hands_on/widgets/appbar/tablet_appbar.dart';

import '../widgets/appbar/mobile_appbar.dart';
import '../widgets/sections/grid_courses/grid_courses_widget.dart';
import '../widgets/sections/stars_section/stars_Section_widget.dart';
import '../widgets/sections/top_section/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        drawer: constraints.maxWidth > Utils.breakpointMobile
            ? null
            : const Drawer(),
        appBar: constraints.maxWidth > Utils.breakpointMobile
            ? const PreferredSize(
                child: TabletAppbar(),
                preferredSize: Size(double.infinity, 72),
              )
            : const PreferredSize(
                child: MobileAppbar(),
                preferredSize: Size(double.infinity, 56),
              ),
        body: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: ListView(
              children: [
                TopSectionWidget(),
                StarSectionWidget(),
                GridCoursesWidget(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
