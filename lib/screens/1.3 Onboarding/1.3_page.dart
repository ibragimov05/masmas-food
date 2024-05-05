import 'package:flutter/material.dart';
import 'package:masmas_food/widgets/widget_for_page_maker_1.2and1.3.dart';

class OnboardingPage13 extends StatelessWidget {
  const OnboardingPage13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageMaker(
        sizedBoxHeight1: 87.0,
        backgroundPath: 'assets/images/page_1.3/background.svg',
        textColumn_1: 'Food Ninja is Where Your',
        textColumn_2: 'Comfort Food Lives',
        textColumn_3: 'Enjoy a fast and smooth food delivery at',
        textColumn_4: 'your doorstep',
        sizedBoxHeight2: 59.0,
        isTrue: true,
      ),
    );
  }
}
