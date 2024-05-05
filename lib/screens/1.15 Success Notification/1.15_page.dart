import 'package:flutter/material.dart';
import 'package:masmas_food/screens/1.4%20Sign%20up/1.4_page.dart';
import 'package:masmas_food/widgets/success_notification.dart';

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const SuccesNotificationPageMaker(
      notificationInfoText: 'Password reset successful',
      pageName: SignUp(),
      elevatedButtonText: 'Back',
    );
  }
}
