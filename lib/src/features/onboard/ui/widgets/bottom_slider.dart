import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSlider extends StatelessWidget {
  const BottomSlider({
    Key? key,
    required this.height,
    required this.width,
    required this.leading,
    required this.dotsCount,
    required this.position,
    required this.trailing,
  }) : super(key: key);

  final double height;
  final double width;
  final Widget leading;
  final int dotsCount;
  final double position;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.12),
        borderRadius: BorderRadius.circular(32.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading,
          DotsIndicator(
            dotsCount: dotsCount,
            position: position,
            decorator: DotsDecorator(
              color: Colors.white.withOpacity(0.7),
              activeColor: Colors.white,
              activeSize: Size(20.w, 9),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: trailing,
          ),
        ],
      ),
    );
  }
}
