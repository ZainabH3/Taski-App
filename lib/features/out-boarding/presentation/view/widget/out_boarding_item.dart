import 'package:flutter/cupertino.dart';
import '../../../../../core/resources/manager-colors.dart';
import '../../../../../core/resources/manager-fonts.dart';
import '../../../../../core/resources/manager-sizes.dart';
import '../../../../../core/resources/manager-styles.dart';

class OutBoardingItem extends StatelessWidget {

  String image;
  String title;
  String subTitle;


  OutBoardingItem({super.key,
   required this.image,
   required this.subTitle,
   required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 14,
          child: Image.asset(
           image
          ),
        ),
        const Spacer(flex: 1),
        Text(
        title,
          style: getBoldTextStyle(
            fontSize: ManagerFontSize.s34,
            color: ManagerColors.textColorsmall,
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: 3,
          child: Text(
           subTitle,
            style: getTextStyle(
              fontSize: ManagerFontSize.s16,
              color: ManagerColors.textColorsmall,
              weight: ManagerFontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}