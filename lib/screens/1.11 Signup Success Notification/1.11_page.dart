import 'package:flutter/material.dart';
import 'package:masmas_food/screens/1.12%20Verification%20code/1.12_page.dart';
import 'package:masmas_food/widgets/success_notification.dart';

class SignUpSuccessNotification extends StatelessWidget {
  const SignUpSuccessNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const SuccesNotificationPageMaker(
      notificationInfoText: 'Your Profile Is Ready To Use',
      pageName: VerificationCode(),
      elevatedButtonText: 'Try Order',
    );
  }
}
