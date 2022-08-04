import 'package:flutter/material.dart';
import 'package:onboarding_ui/controllers/constants.dart';
import 'package:onboarding_ui/views/onboarding_page.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  PageController controller = PageController(initialPage: 0);

//change screen function

  void changeScreen(int nextScreenNo) {
    controller.animateToPage(
      nextScreenNo,
      duration: const Duration(
        milliseconds: 200,
      ),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [

          // First page

          OnboardingPage(
            image: Image.asset(
              'lib/images/patient.png',
            ),
            title: 'Feeling Unwell?',
            description:
                'Welcome to your one stop medical shop, here you will find the best assistance online.',
            noOfScreen: 3,
            currentScreenNo: 0,
            onNextPressed: changeScreen,
          ),

          // Second Page

          OnboardingPage(
            image: Image.asset(
              'lib/images/help.png',
            ),
            title: 'All in one place',
            description:
                'Choose from a range of local, highly rated Dentists, Doctors, Pharmacists and Therapists.',
            noOfScreen: 3,
            currentScreenNo: 1,
            onNextPressed: changeScreen,
          ),

          // Third Page

          OnboardingPage(
            image: Image.asset(
              'lib/images/calendar.png',
            ),
            title: 'Schedule and See',
            description:
                'Schedule and view your appointments, convey with pharmacies, see when your next therapy session is, track your appointments all in one place.',
            noOfScreen: 3,
            currentScreenNo: 2,
            onNextPressed: changeScreen,
          ),
        ],
      ),
    );
  }
}
