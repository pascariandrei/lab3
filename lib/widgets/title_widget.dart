import 'package:flutter/material.dart';
import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';
import 'package:get/get.dart';
import '../Controllers/calculator-controller.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CalculatorController calculatorController = Get.find();
    return Column(
      children: [
        Text(
          'Calculator',
          style: TextStyles.sfprotext1.copyWith(
              color: CustomColor.black,
              fontSize: 24,
              fontFamily: 'SFProTextRegular'),
        ),
        Row(
          children: [
            new Align(
              alignment: Alignment.center,
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment(1.0, 2.0),
          padding: const EdgeInsets.only(left: 5, bottom: 18, right: 10),
          width: 358,
          child: Obx(() => Text(calculatorController.history.value,
              style: TextStyles.sfprotext1.copyWith(
                  color: Color(0xFF969696),
                  fontSize: 48,
                  fontFamily: 'SFProTextRegular'))),
        ),
        Container(
          alignment: Alignment(1.0, 1.0),
          padding: const EdgeInsets.only(left: 5),
          width: 358,
          child: Obx(() => Text(calculatorController.result.value,
              style: TextStyles.sfprotext1.copyWith(
                  color: Color(0xFF969696),
                  fontSize: 48,
                  fontFamily: 'SFProTextRegular'))),
        ),
      ],
    );
  }
}
