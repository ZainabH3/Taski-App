import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../core/resources/manager-colors.dart';
import '../../../../core/widgets/scaffold-with-background-image.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return scaffoldWithBackground(child: Center(
      child: Container(
        width: 160,
        height: 160,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: ManagerColors.primaryColor1,
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,

              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ManagerColors.gradientColor2,
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple.withOpacity(0.5),
                  ),
                  //  overflow: Overflow.visible,
                ),
              ),
            ),
          ],
        ),
      ),
    ), );
  }


}
