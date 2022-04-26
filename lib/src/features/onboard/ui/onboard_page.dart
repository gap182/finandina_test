import 'package:finandina_test/src/core/theme/colors.dart';
import 'package:finandina_test/src/core/theme/fonts.dart';
import 'package:finandina_test/src/features/home/ui/home_page.dart';
import 'package:finandina_test/src/features/onboard/ui/utils/onboard_page_list.dart';
import 'package:finandina_test/src/features/onboard/ui/widgets/bottom_slider.dart';
import 'package:finandina_test/src/features/onboard/ui/widgets/onboardpage_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final _pageController = PageController();
  int position = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          OnboardPageSlide(
            onChanged: _onChanged,
            list: onboardPageList,
            pageController: _pageController,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.h, left: 15.w, right: 15.w),
            child: BottomSlider(
              height: 55.h,
              width: size.width,
              dotsCount: onboardPageList.length,
              leading: Padding(
                padding: EdgeInsets.only(left: 30.0.w),
                child: GestureDetector(
                  onTap: _avoid,
                  child: Text(
                    "Saltar",
                    style: h3,
                  ),
                ),
              ),
              position: position.toDouble(),
              trailing: GestureDetector(
                onTap: () => _changePage(_pageController, position),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: ColorFiltered(
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcOut,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: UIColors.gradiOrange1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onChanged(int index) {
    position = index;
    setState(() {});
  }

  void _avoid() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
        (route) => false);
  }

  void _changePage(PageController pageController, int index) {
    pageController.jumpToPage(index + 1);
  }
}
