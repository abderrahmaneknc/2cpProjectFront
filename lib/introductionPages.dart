import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intropagetemplate.dart';
import 'txtbutton.dart';

class IntroductionPages extends StatefulWidget {
  IntroductionPages({Key? key}) : super(key: key);

  @override
  _IntroductionPagesState createState() => _IntroductionPagesState();
}

class _IntroductionPagesState extends State<IntroductionPages> {
  final PageController _controller = PageController();
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onPageChange);
  }

  @override
  void dispose() {
    _controller.removeListener(_onPageChange);
    _controller.dispose();
    super.dispose();
  }

  void _onPageChange() {
    setState(() {
      _currentPageIndex = _controller.page!.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) => _onPageChange(),
            children: [
              Intropagetmplt(
                picture: 'assets/ph1.jpg',
                text1: 'Mind Connect',
                text2:
                    'Connect with brilliant minds, explore their expertise, and collaborate effortlessly throught our app.',
                ww: 248,
                hh: 278,
                f1: 28,
                f2: 20,
              ),
              Intropagetmplt(
                picture: 'assets/ph2.jpg',
                text1: 'Expert Insight',
                text2:
                    'Dive into exper-authored blogs across diverse fields on our app, igniting inspiration and insight with each read.',
                ww: 248,
                hh: 278,
                f1: 28,
                f2: 20,
              ),
              Intropagetmplt(
                picture: 'assets/ph3.jpg',
                text1: 'Active Rewards',
                text2:
                    'Be active, aern points, unlock exlusive benefits tailored to you -from special features to rewards.',
                ww: 248,
                hh: 278,
                f1: 28,
                f2: 20,
              ),
              Intropagetmplt(
                picture: 'assets/ph4.jpg',
                text1: 'Diverse Learning',
                text2:
                    'Discover diverse resources and live courses in one app, tailores enhance your learning journey across various fields.',
                ww: 248,
                hh: 278,
                f1: 28,
                f2: 20,
              ),
            ],
          ),
          if (_currentPageIndex == 3)
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: MyTxtButtons(
                  text: 'done',
                  color: Color(0xFF2D3D51),
                  onPressed: () {
                    Navigator.pushNamed(context, '//');
                  },
                  size: 10,
                ),
              ),
            ),
          Align(
            alignment: Alignment(0, 0.75),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: WormEffect(
                dotWidth: 10,
                dotHeight: 10,
                spacing: 8,
                dotColor: Colors.grey,
                activeDotColor: Color(0xFF2D3D51),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
