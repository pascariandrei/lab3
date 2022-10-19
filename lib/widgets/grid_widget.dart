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
  double? isDouble;
  int? isInt;
  String history = '';
  String result = '';
  String textDisplay = '';
  String operation = '';

  void printResultplus(String el){
    result = (firstNum + secondNum).toString();
    if(result.toString().substring(result.toString().length - 2, result.toString().length) == ".0"){
      result = result.toString().substring(0, result.toString().length -2 );
    }else if(result.toString().substring(
        result.toString().length - 2, result.toString().length) !=
        ".0"){
      result = result.toString();
    }
  }
  void printResultminus(String el){
    result = (firstNum - secondNum).toString();
    if(result.toString().substring(result.toString().length - 2, result.toString().length) == ".0"){
      result = result.toString().substring(0, result.toString().length -2 );
    }else if(result.toString().substring(
        result.toString().length - 2, result.toString().length) !=
        ".0"){
      result = result.toString();
    }
  }
  void printResultmult(String el){
    result = (firstNum * secondNum).toString();
    if(result.toString().substring(result.toString().length - 2, result.toString().length) == ".0"){
      result = result.toString().substring(0, result.toString().length -2 );
    }else if(result.toString().substring(
        result.toString().length - 2, result.toString().length) !=
        ".0"){
      result = result.toString();
    }
  }
  void printResultdiv(String el){
    result = (firstNum / secondNum).toString();
    if(result.toString().substring(result.toString().length - 2, result.toString().length) == ".0"){
      result = result.toString().substring(0, result.toString().length -2 );
    }else if(result.toString().substring(
        result.toString().length - 2, result.toString().length) !=
        ".0"){
      result = result.toString();
    }
  }


  void doubleparse(String el){
    if (secondNum.toString().substring(
        secondNum.toString().length - 2, secondNum.toString().length ) ==
        ".0" && firstNum.toString().substring(
        firstNum.toString().length - 2, firstNum.toString().length) ==
        ".0") {
      history =
      "${firstNum.toString().substring(0, firstNum.toString().length - 2)} $el ${secondNum.toString().substring(0, secondNum.toString().length - 2)}";
      //"${firstNum.toString()} + ${secondNum.toString().substring(0, secondNum.toString().length - 2)} $el";
    } else if(secondNum.toString().substring(
        secondNum.toString().length - 2, secondNum.toString().length ) !=
        ".0" && firstNum.toString().substring(
        firstNum.toString().length - 2, firstNum.toString().length) ==
        ".0"){
      history =
      "${firstNum.toString().substring(0, firstNum.toString().length - 2)} $el ${secondNum.toString()}";
    }
    else if(secondNum.toString().substring(
        secondNum.toString().length - 2, secondNum.toString().length ) ==
        ".0" && firstNum.toString().substring(
        firstNum.toString().length - 2, firstNum.toString().length) !=
        ".0"){
      history =
      "${firstNum.toString()} $el ${secondNum.toString().substring(0, secondNum.toString().length - 2)}";
    }

    else {
      history = "$firstNum $el $secondNum";
    }
  }


  void btnOnClick(String el) {
    if (el == 'C') {
      textDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (el == '+' || el == '-' || el == '*' || el == '/') {
      firstNum = double.parse(textDisplay);
      result = '';
      if (firstNum.toString().substring(
              firstNum.toString().length - 2, firstNum.toString().length) ==
          ".0") {
        history =
            "${firstNum.toString().substring(0, firstNum.toString().length - 2)} $el";
      } else {
        history = "$firstNum $el";
      }
      operation = el;
    } else if (el == '=') {
      secondNum = double.parse(textDisplay);
      doubleparse(operation);
      printResultplus(operation);
      //result = (firstNum + secondNum).toString();
      if (operation == '-') {
        doubleparse(operation);
        printResultminus(operation);
      }
      if (operation == '*') {
        doubleparse(operation);
        printResultmult(operation);
      }
      if (operation == '/') {
        doubleparse(operation);
        printResultdiv(operation);
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
              child: Text(history,
                  style: TextStyles.sfprotext1.copyWith(
                      color: Color(0xFF969696),
                      fontSize: 48,
                      fontFamily: 'SFProTextRegular')),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: const EdgeInsets.only(left: 5),
              width: 358,
              child: Text(result,
                  style: TextStyles.sfprotext1.copyWith(
                      color: Color(0xFF969696),
                      fontSize: 48,
                      fontFamily: 'SFProTextRegular')),
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

  double dbl = 0.0;
