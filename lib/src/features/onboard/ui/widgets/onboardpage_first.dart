import 'package:finandina_test/src/core/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardPageFirst extends StatelessWidget {
  const OnboardPageFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          height: size.height,
          child: Image.asset(
            'assets/images/background.png',
            fit: BoxFit.fill,
          ),
        ),
        SafeArea(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 90.h,
                  width: 90.h,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(
                  height: 16.h,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: h2,
                    text: "Con ",
                    children: [
                      TextSpan(text: "Banco Finandina\n", style: h2Bold),
                      TextSpan(text: "tienes el poder de ser libre", style: h2)
                    ],
                  ),
                ),
                const Expanded(child: SizedBox.shrink()),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Descubre lo que puedes hacer con tu\n",
                    style: h3,
                    children: [
                      TextSpan(text: "App Banco Finandina", style: h2Bold)
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
