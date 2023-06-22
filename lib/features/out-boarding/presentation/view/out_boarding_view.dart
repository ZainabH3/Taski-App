import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taski_app/core/resources/manager-colors.dart';
import 'package:taski_app/core/resources/manager-sizes.dart';
import 'package:taski_app/core/resources/manager-strings.dart';
import '../../../../core/resources/manager-fonts.dart';
import '../../../../core/resources/manager-styles.dart';
import '../../../../core/widgets/main_button.dart';
import '../controller/out_boarding_controller.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w20,
            vertical: ManagerHeight.h20,
          ),
          child: GetBuilder<OutBoardingController>(builder: (controller) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: controller.showBackButton(),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          mainButton(
                            minWidth: 30,
                            onPressed: () {
                              controller.previousPage();
                            },
                            child: Container(
                              width: ManagerWidth.w50,
                              height: ManagerHeight.h50,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: ManagerColors.accentColor1,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_back_outlined,
                                  color: ManagerColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Visibility(
                      visible: controller.isNotLastedPage(),
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: mainButton(
                          onPressed: () {
                            controller.nextPage();
                          },
                          child: Text(
                            ManagerStrings.skip,
                            style: getRegularTextStyle(
                              fontSize: ManagerFontSize.s16,
                              color: ManagerColors.gradientColor2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                Expanded(
                  flex: 30,
                  child: PageView(
                    controller: controller.pageController,
                    children: [
                      ...controller.pageViewItems,
                    ],
                    onPageChanged: (index) {
                      controller.setCurrentPage(index);
                    },
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  height: ManagerHeight.h6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        List.generate(controller.pageViewItems.length, (index) {
                      return GetBuilder<OutBoardingController>(
                          builder: (controller) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: controller.isFirstedPage(index) ? 25 : 6,
                          height: 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: controller.currentPage == index
                                ? ManagerColors.primaryColor1
                                : ManagerColors.greyLight,
                          ),
                        );
                      });
                    }),
                  ),
                ),
                SizedBox(height: ManagerHeight.h26),
                Visibility(
                  visible: controller.isNotLastedPage(),
                  replacement: mainButton(
                    child: Text(
                      ManagerStrings.getStartedButton,
                      style: getBoldTextStyle(
                          fontSize: ManagerFontSize.s16,
                          color: ManagerColors.white,
                      ),
                    ),
                    minWidth: double.infinity,
                    height: ManagerHeight.h48,
                    color: ManagerColors.gradientColor2,
                  ),
                  child: mainButton(
                    minWidth: 30,
                    onPressed: () {
                      controller.nextPage();
                    },
                    child: Container(
                      width: ManagerWidth.w80,
                      height: ManagerHeight.h80,
                      padding: EdgeInsets.symmetric(
                        vertical: ManagerHeight.h14,
                        horizontal: ManagerWidth.w14,
                      ),
                      decoration: BoxDecoration(
                        color: ManagerColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ManagerColors.greyLight,
                          width: ManagerWidth.w1,
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ManagerColors.accentColor1,
                        ),
                        child: Center(
                          child: Text('${controller.currentPage + 1}'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
