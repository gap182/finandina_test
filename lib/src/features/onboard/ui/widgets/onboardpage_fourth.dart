import 'package:finandina_test/src/core/theme/colors.dart';
import 'package:finandina_test/src/features/onboard/ui/widgets/base_onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardPageFourth extends StatelessWidget {
  const OnboardPageFourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseOnboard(
        showLogo: true,
        backgroundColor: UIColors.gradiOrange1,
        width: 320.w,
        height: 300.h,
        bottom: 60.h,
        right: 70.w,
        thirdImage: Positioned(
          bottom: 70.h,
          left: 20.w,
          child: SizedBox(
            width: 50.h,
            height: 50.h,
            child: Image.asset('assets/images/thirdimage_ob3.png'),
          ),
        ),
        title: "Has tus pagos libremente",
        subtitle:
            "Paga tus facturas, compras o productos\ndonde sea que estés.",
        bottomImageAsset: "assets/images/bottom_image_ob4.png",
        uppImageAsset: "assets/images/upp_image_ob4.png");
  }
}
