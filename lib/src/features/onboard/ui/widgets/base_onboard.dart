import 'package:finandina_test/src/core/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseOnboard extends StatelessWidget {
  const BaseOnboard({
    Key? key,
    required this.backgroundColor,
    required this.width,
    required this.height,
    required this.bottom,
    required this.right,
    required this.title,
    required this.subtitle,
    required this.bottomImageAsset,
    required this.uppImageAsset,
    this.showLogo = false,
    this.thirdImage,
    this.fourthImage,
  }) : super(key: key);

  final Color backgroundColor;
  final double width;
  final double height;
  final double bottom;
  final double right;
  final String title;
  final String subtitle;
  final String bottomImageAsset;
  final String uppImageAsset;
  final bool showLogo;
  final Widget? thirdImage;
  final Widget? fourthImage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              showLogo
                  ? Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                          width: 30.h,
                          child: Image.asset("assets/images/logo.png"),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              SizedBox(
                height: height,
                width: width,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: bottom,
                      right: right,
                      child: Image.asset(
                        bottomImageAsset,
                        scale: 1.5.sp,
                      ),
                    ),
                    SizedBox(
                      height: height,
                      width: width,
                      child: Image.asset(uppImageAsset),
                    ),
                    thirdImage ?? const SizedBox.shrink(),
                    fourthImage ?? const SizedBox.shrink(),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Text(
                title,
                style: h1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                subtitle,
                style: normalText,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 90.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
