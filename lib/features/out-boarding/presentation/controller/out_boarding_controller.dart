import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taski_app/config/constants.dart';

import '../../../../core/resources/manager-assets.dart';
import '../../../../core/resources/manager-strings.dart';
import '../view/widget/out_boarding_item.dart';

class OutBoardingController extends GetxController {
  late PageController pageController;

  int firstPage = 0;
  int lastPage = 2;
  int currentPage = 0;

  final List pageViewItems = [
    OutBoardingItem(
      image: ManagerAssets.outBoardingIllustration1,
      title: ManagerStrings.outBoardingTitle1,
      subTitle: ManagerStrings.outBoardingSubTitle1,
    ),
    OutBoardingItem(
      image: ManagerAssets.outBoardingIllustration2,
      title: ManagerStrings.outBoardingTitle2,
      subTitle: ManagerStrings.outBoardingSubTitle2,
    ),
    OutBoardingItem(
      image: ManagerAssets.outBoardingIllustration3,
      title: ManagerStrings.outBoardingTitle3,
      subTitle: ManagerStrings.outBoardingSubTitle3,
    ),
  ];

  bool isFirstedPage(int index) {
    return currentPage == index;
  }

  @override
  void onInit() {
    super.onInit();
    currentPage = firstPage;
    lastPage = pageViewItems.length - 1;
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void setCurrentPage(int index) {
    currentPage = index;
    update();
  }

  void skipPage() {
    pageController.animateToPage(
      lastPage,
      duration: const Duration(seconds: Constants.outBoardingDurationTime),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    update();
  }

  void nextPage() {
    if (isNotLastedPage()) {
      pageController.animateToPage(
        ++currentPage,
        duration: const Duration(seconds: Constants.outBoardingDurationTime),
        curve: Curves.fastLinearToSlowEaseIn,
      );
      update();
    }
  }

  bool isNotLastedPage() {
    return currentPage < lastPage;
  }

  bool showBackButton() {
    return currentPage > firstPage && currentPage <= lastPage;
  }
}
