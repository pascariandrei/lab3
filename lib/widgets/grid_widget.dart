import 'package:flutter/material.dart';
import 'package:flutter_calculator/resources/fonts.dart';
import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';
import 'btn-widget.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
   late double firstNum;
   late double secondNum;
  String history = '';
  String result = '';
  String textDisplay = '';
  String operation = '';
  double dbl = 0.0;

  void btnOnClick(String el) {
    if (el == 'C') {
      textDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (el == '+' || el == '-' || el == '*' || el == '/') {
      firstNum =double.parse(textDisplay) ;
      result = '';
      history = "${firstNum.toString().substring(0, firstNum.toString().length - 2)} $el ";
      operation = el;
    } else if (el == '=') {
      secondNum = double.parse(textDisplay);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
        history = "$firstNum + $secondNum";
      }
      if (operation == '-') {
        result = (firstNum - secondNum).toString();
        history = "$firstNum - $secondNum";
      }
      if (operation == '*') {
        result = (firstNum * secondNum).toString();
        history = "$firstNum * $secondNum";
      }
      if (operation == '/') {
        result = (firstNum / secondNum).toString();
        history = "$firstNum / $secondNum";
      }
    } else if (el == 'Del') {
      firstNum = double.parse(textDisplay);
      result = firstNum.toString().substring(0, firstNum.toString().length - 1);
    }
    else {
      result = "$textDisplay$el";
    }
    setState(() {
      textDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF5F5F5),
        padding: const EdgeInsets.only(bottom: 0, top: 63),
        child: Column(
          children: [
            Text(
              'Calculator',
              style: TextStyles.sfprotext1
                  .copyWith(color: CustomColor.black, fontSize: 24,fontFamily: 'SFProTextRegular'),
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
              child: Text(history,
                  style: TextStyles.sfprotext1
                      .copyWith(color: Color(0xFF969696), fontSize: 48, fontFamily: 'SFProTextRegular')),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: const EdgeInsets.only(left: 5),
              width: 358,
              child: Text(result,
                  style: TextStyles.sfprotext1
                      .copyWith(color: Color(0xFF969696), fontSize: 48,fontFamily: 'SFProTextRegular')),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 16, right: 16, bottom: 12),
                child: GridView.count(
                    padding: const EdgeInsets.only(top: 20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: <Widget>[
                      Button(text: 'C', color: 0xFFFF887D, click: btnOnClick),
                      SizedBox(),
                      Button(text: 'Del', color: 0xFF11998E, click: btnOnClick),
                      Button(text: '/', color: 0xFF11998E, click: btnOnClick),
                      Button(text: '7', color: 0xFF969696, click: btnOnClick),
                      Button(text: '8', color: 0xFF969696, click: btnOnClick),
                      Button(text: '9', color: 0xFF969696, click: btnOnClick),
                      Button(text: '*', color: 0xFF11998E, click: btnOnClick),
                      Button(text: '4', color: 0xFF969696, click: btnOnClick),
                      Button(text: '5', color: 0xFF969696, click: btnOnClick),
                      Button(text: '6', color: 0xFF969696, click: btnOnClick),
                      Button(text: '-', color: 0xFF11998E, click: btnOnClick),
                      Button(text: '1', color: 0xFF969696, click: btnOnClick),
                      Button(text: '2', color: 0xFF969696, click: btnOnClick),
                      Button(text: '3', color: 0xFF969696, click: btnOnClick),
                      Button(text: '+', color: 0xFF11998E, click: btnOnClick),
                      SizedBox(),
                      Button(text: '0', color: 0xFF969696, click: btnOnClick),
                      Button(text: '.', color: 0xFF969696, click: btnOnClick),
                      Container(
                          color: Color(0xFF11998E),
                          child: Button(
                              text: '=', color: 0xFFEEF0F2, click: btnOnClick)),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
