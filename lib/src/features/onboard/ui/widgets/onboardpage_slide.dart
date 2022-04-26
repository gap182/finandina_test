import 'package:finandina_test/src/features/onboard/ui/utils/onboard_page_list.dart';
import 'package:flutter/material.dart';

class OnboardPageSlide extends StatelessWidget {
  const OnboardPageSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onboardPageList.length,
      itemBuilder: (_, index) => onboardPageList[index],
    );
  }
}
