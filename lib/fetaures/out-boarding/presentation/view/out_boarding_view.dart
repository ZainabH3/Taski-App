import 'package:flutter/material.dart';
import 'package:taski_app/core/resources/manager-assets.dart';
import 'package:taski_app/core/resources/manager-colors.dart';
import 'package:taski_app/core/resources/manager-sizes.dart';
import 'package:taski_app/core/resources/manager-strings.dart';
import '../../../../core/resources/manager-fonts.dart';
import '../../../../core/resources/manager-styles.dart';
import '../../../../core/widgets/main_button.dart';

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
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: mainButton(
                  child: Text(
                    ManagerStrings.skip,
                    style: getRegularTextStyle(
                        fontSize: ManagerFontSize.s16,
                        color: ManagerColors.gradientColor2),
                  ),
                ),
              ),
              SizedBox(height: ManagerHeight.h48),
              Image.asset(ManagerAssets.outBoardingIllustration1),
              SizedBox(
                height: ManagerHeight.h26,
              ),
              Text(
                ManagerStrings.outBoardingSubTitle1,
                style: getBoldTextStyle(
                  fontSize: ManagerFontSize.s34,
                  color: ManagerColors.textColorsmall,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: ManagerHeight.h30,
              ),
              Text(
                ManagerStrings.outBoardingTitle1,
                style: getTextStyle(
                  fontSize: ManagerFontSize.s16,
                  color: ManagerColors.textColorsmall,
                  weight: ManagerFontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: ManagerHeight.h48,
              ),
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
              SizedBox(
                height: ManagerHeight.h26,
              ),
              mainButton(
                child: Stack(
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
                        child: Icon(Icons.arrow_forward),

                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
