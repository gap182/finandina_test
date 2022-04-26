import 'package:finandina_test/src/core/theme/colors.dart';
import 'package:finandina_test/src/core/theme/fonts.dart';
import 'package:finandina_test/src/features/onboard/ui/widgets/bottom_slider.dart';
import 'package:finandina_test/src/features/onboard/ui/widgets/onboardpage_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const OnboardPageSlide(),
          Container(
            margin: EdgeInsets.only(bottom: 20.h, left: 15.w, right: 15.w),
            child: BottomSlider(
              height: 55.h,
              width: size.width,
              dotsCount: 6,
              leading: Padding(
                padding: EdgeInsets.only(left: 30.0.w),
                child: Text(
                  "Saltar",
                  style: h3,
                ),
              ),
              position: 0.0,
              trailing: Container(
                height: 40.h,
                width: 40.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: UIColors.gradiOrange1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
