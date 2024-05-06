import 'package:flutter/material.dart';
import 'package:masmas_food/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:masmas_food/widgets/success_notification.dart';

class SuccessNotification extends StatelessWidget {
  const SuccessNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const SuccesNotificationPageMaker(
      notificationInfoText: 'Password reset successful',
      pageName: TabBox(),
      elevatedButtonText: 'Back',
    );
  }
}
