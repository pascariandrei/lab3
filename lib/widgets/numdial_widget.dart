import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/title_widget.dart';
import 'package:get/get.dart';
import '../Controllers/calculator-controller.dart';
import 'btn-widget.dart';

class NumberDials extends StatelessWidget {
  const NumberDials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final calculatorController = Get.put(CalculatorController());
    final CalculatorController calculatorController = Get.find();
    return Container(

      padding: const EdgeInsets.only(
          top: 20, left: 16, right: 16, bottom: 12),
      child: GridView.count(
          padding: const EdgeInsets.only(top: 20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          children: <Widget>[
            Button(text: 'C', color: 0xFFFF887D, click: calculatorController.btnOnClick),
            SizedBox(),
            Button(text: 'Del', color: 0xFF11998E, click: calculatorController.btnOnClick),
            Button(text: '/', color: 0xFF11998E, click: calculatorController.btnOnClick),
            Button(text: '7', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '8', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '9', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '*', color: 0xFF11998E, click: calculatorController.btnOnClick),
            Button(text: '4', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '5', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '6', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '-', color: 0xFF11998E, click: calculatorController.btnOnClick),
            Button(text: '1', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '2', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '3', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '+', color: 0xFF11998E, click: calculatorController.btnOnClick),
            SizedBox(),
            Button(text: '0', color: 0xFF969696, click: calculatorController.btnOnClick),
            Button(text: '.', color: 0xFF969696, click: calculatorController.btnOnClick),
            Container(
                color: Color(0xFF11998E),
                child: Button(
                    text: '=', color: 0xFFEEF0F2, click: calculatorController.btnOnClick)),
          ]),
    );
  }
}
