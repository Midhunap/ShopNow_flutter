import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_now/widgets/responsive_button.dart';
import 'package:shop_now/consts/app_colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List images = [
    'onboarding_two.jpg',
    'onboarding_four.jpg',
    'onboarding_three.jpg'
  ];

  List onBoardTitle = [
    'Choose Your Product',
    'Add to Your Cart',
    'Pay the Cart',
  ];

  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/OnBoardingScreen/${images[index]}"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 80, left: 30, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          onBoardTitle[index],
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.normal,
                              fontSize: 22,
                              color: AppColor.titleColor),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 270,
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                color: AppColor.subTitleColor),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          child: index == 2
                              ? ResponsiveButton(
                                  width: 100,
                                  buttonText: 'Done',
                                )
                              : ResponsiveButton(
                                  width: 100,
                                  buttonText: 'Skip',
                                ),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColor.subTitleColor
                                : AppColor.subTitleColor.withOpacity(0.2),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
