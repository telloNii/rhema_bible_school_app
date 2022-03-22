import 'package:flutter/material.dart';
import 'package:project_rhema/screens/login_screen.dart';

import '../model/onboarding_slide.dart';
import '../widgets/slide_indicator_widget.dart';
import '../widgets/slide_item_widget.dart';

class OnboardingScreen extends StatefulWidget {
  static const String id = "onboarding screen route";
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
      if (_currentPage == slideList.length) {
        Navigator.popAndPushNamed(context, LoginPage.id);
      }
    });
  }

  nextFunction() {
    _pageController.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: slideList.length,
              itemBuilder: (BuildContext context, int index) => SlideItem(index),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 24.0, right: 24.0, bottom: 20.0, left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Visibility(
                  visible: false,
                  child: Row(
                    children: [
                      for (int i = 0; i < slideList.length; i++)
                        i == _currentPage
                            ? const SlideIndicator(isActive: true)
                            : const SlideIndicator(isActive: false)
                    ],
                  ),
                ),
                _currentPage == slideList.length - 1
                    ? InkWell(
                        onTap: () {
                          Navigator.popAndPushNamed(context, LoginPage.id);
                        },
                        child: Row(
                          children: const [
                            Text('Get started',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1C211D))),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      )
                    : InkWell(
                        onTap: () => nextFunction(),
                        child: Row(
                          children: const [
                            Text('Next',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff1C211D))),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
