import 'package:flutter/material.dart';

class OnboardPageSlide extends StatelessWidget {
  const OnboardPageSlide({
    Key? key,
    required this.onChanged,
    required this.list,
    required this.pageController,
  }) : super(key: key);

  final Function(int) onChanged;
  final List<Widget> list;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: list.length,
      onPageChanged: onChanged,
      itemBuilder: (_, index) => list[index],
    );
  }
}
