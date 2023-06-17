import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/manager-colors.dart';
import '../resources/manager-fonts.dart';
import '../resources/manager-sizes.dart';
import '../resources/manager-strings.dart';
import '../resources/manager-styles.dart';

class mainButton extends StatelessWidget {
  const mainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      minWidth: ManagerWidth.w34,
      height: ManagerHeight.h16,
      child: Text(
        ManagerStrings.skip,
        style: getRegularTextStyle(
            fontSize: ManagerFontSize.s16,
            color: ManagerColors.gradientColor2),
      ),
    );
  }
}