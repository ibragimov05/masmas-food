import 'package:flutter/material.dart';
import 'package:masmas_food/widgets/widget_for_page_maker_1.2and1.3.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageMaker(
        sizedBoxHeight1: 56.0,
        backgroundPath: 'assets/images/page_1.2/illustartion.svg',
        textColumn_1: 'Find your  Comfort',
        textColumn_2: 'Food here',
        textColumn_3: 'Here You Can find a chef or dish for every',
        textColumn_4: 'taste and color. Enjoy!',
        sizedBoxHeight2: 39.0,
        isTrue: false,
      ),
    );
  }
}
