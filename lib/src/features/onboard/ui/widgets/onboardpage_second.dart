import 'package:finandina_test/src/core/theme/colors.dart';
import 'package:finandina_test/src/features/onboard/ui/widgets/base_onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardPageSecond extends StatelessWidget {
  const OnboardPageSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseOnboard(
      backgroundColor: UIColors.pink1,
      width: 340.w,
      height: 360.h,
      bottom: 40.h,
      right: 20.w,
      title: 'Tus productos a la mano',
      subtitle:
          "Administra tus productos libremente de\n manera fácil y rápida.",
      bottomImageAsset: 'assets/images/background_onboard_page_second_2.png',
      uppImageAsset: 'assets/images/background_onboard_page_second.png',
    );
  }
}
