import 'package:flutter/material.dart';
import 'package:my_library/custom/theme.dart';
import 'package:my_library/widgets/buttons.dart';
import 'package:my_library/widgets/onboardingwidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leading: TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: AppTheme().mainColor),
              )),
        ),
      ),
      backgroundColor: AppTheme().whiteColor,
      body: PageView(
        controller: controller,
        children: [
          boarding(
              image: 'assets/images/oldlady.png',
              heading: 'Now reading books\nwill be easier',
              text:
                  ' Discover new worlds, join a vibrant\nreading community. Start your reading\nadventure effortlessly with us.'),
          boarding(
              image: 'assets/images/bigbook.png',
              heading: 'Your Bookish Soulmate \nAwaits',
              text:
                  'Let us be your guide to the perfect read.\nDiscover books tailored to your tastes\n for a truly rewarding experience.'),
          boarding(
              image: 'assets/images/readundertree.png',
              heading: 'Start Your Adventure',
              text:
                  "Ready to embark on a quest for\ninspiration and knowledge? Your\nadventure begins now. Let's go!")
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 200,
        color: AppTheme().whiteColor,
        child: Column(
          spacing: 15,
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                  dotColor: AppTheme().grey,
                  activeDotColor: AppTheme().mainColor,
                  dotHeight: 5,
                  dotWidth: 5,
                  type: WormType.thinUnderground,
                  spacing: 2),
            ),
            button(),
            button()
          ],
        ),
      ),
    );
  }
}
