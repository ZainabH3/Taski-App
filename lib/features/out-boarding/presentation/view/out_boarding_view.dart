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
            horizontal: ManagerWidth.w16,
            vertical: ManagerHeight.h20,
          ),
          child: GetBuilder<OutBoardingController>(builder: (controller) {
            return Column(
              children: [
                Align(
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
                SizedBox(height: ManagerHeight.h48),
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    children: [
                      ...controller.PageViewItems,
                    ],
                    onPageChanged: (index) {
                      controller.setCurrentPage(index);
                    },
                  ),
                ),
                SizedBox(height: ManagerHeight.h48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    final bool isPrimary = index == 0;
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: isPrimary ? 25 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: isPrimary
                            ? ManagerColors.primaryColor1
                            : ManagerColors.greyLight,
                      ),
                    );
                  }),
                ),
                SizedBox(height: ManagerHeight.h26),
                mainButton(
                  onPressed: () {
                    controller.nextPage();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: ManagerWidth.w80,
                            height: ManagerHeight.h80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ManagerColors.greyLight,
                                width: ManagerWidth.w1,
                              ),
                            ),
                          ),
                          Container(
                            width: ManagerWidth.w50,
                            height: ManagerHeight.h50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ManagerColors.accentColor1,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: ManagerColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
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
