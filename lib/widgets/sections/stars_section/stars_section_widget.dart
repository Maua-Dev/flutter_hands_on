import 'package:flutter/material.dart';
import 'package:flutter_hands_on/widgets/sections/stars_section/widgets/start_widget.dart';

class StarSectionWidget extends StatelessWidget {
  const StarSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Wrap(
          runSpacing: 16,
          spacing: 16,
          alignment: WrapAlignment.center,
          children: [
            StarWidget(
                title: '+45.000 alunos', description: 'Didática garantida'),
            StarWidget(
                title: '+45.000 alunos', description: 'Didática garantida'),
            StarWidget(
                title: '+45.000 alunos', description: 'Didática garantida'),
          ],
        ),
      ),
    );
  }
}
