import 'package:flutter/material.dart';
import 'package:onboarding_ui/controllers/constants.dart';
import 'package:onboarding_ui/models/rounded_button.dart';

//multiple onboarding screens inside pageview

class OnboardingPage extends StatelessWidget {
  final Image image;
  final String title;
  final String description;
  final int noOfScreen;
  final Function(int) onNextPressed;
  final int currentScreenNo;

  const OnboardingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.noOfScreen,
    required this.onNextPressed,
    required this.currentScreenNo,
  }) : super(key: key);

  // Open home screen function
  void openHomeScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    // main page
    bool isLastScreen = currentScreenNo >= noOfScreen - 1;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              // First image

              children: [
                image,
                const SizedBox(
                  height: 20,
                ),

                // Title text

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple[400],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // Description text

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 20,
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Skip and next buttons

          Visibility(
            // replaces buttons with a new get started button
            visible: !isLastScreen,
            replacement: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 50,
                  child: RoundedButton(
                    title: "Get Started",
                    onPressed: () {
                      openHomeScreen(context);
                    },
                    // Once this is clicked, will lead onto the home screen of your main app
                  ),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedButton(
                  title: "Skip",
                  onPressed: () {
                    openHomeScreen(context);
                  },
                ),
                Row(
                  children: [
                    for (int i = 0; i < noOfScreen; i++)
                      createProgressDots((i == currentScreenNo) ? true : false)
                  ],
                ),
                RoundedButton(
                  title: "Next",
                  onPressed: () {
                    onNextPressed(currentScreenNo + 1);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
