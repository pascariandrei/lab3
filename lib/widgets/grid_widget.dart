import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';
import 'btn-widget.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  int? firstNum;
  int? secondNum;
  String? log;
  String? result='';
  String? textDisplay='';
  String? operation;

  void btnOnClick(String el) {
    if (el == 'C') {
      textDisplay = '0';
      firstNum = 0;
      secondNum = 0;
      result = 'a';
    }else if(el == '1'){
      textDisplay = '1';
    }else if(el == '2'){
      textDisplay = '2';
    }
    setState(() {
      result = textDisplay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          ' Calculator',
          style: TextStyles.sfprotextRegular25
              .copyWith(color: CustomColor.black, fontSize: 24),
        ),
        Row(
          children: [
            new Align(
              alignment: Alignment.center,
            ),
          ],
        ),Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left:270,bottom: 49.78,top:10 ),
              width: 358,
              child: Text('sss',
                  style: TextStyles.sfprotextRegular25
                      .copyWith(color: Color(0xFF969696), fontSize: 48)),
            ), Container(
              padding: const EdgeInsets.only(left:270 ),
              width: 358,
              child: Text('$result',
                  style: TextStyles.sfprotextRegular25
                      .copyWith(color: Color(0xFF969696), fontSize: 48)),
            ),
          ],
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
                  Button(text: 'C', color: 0xFF11998E, click: btnOnClick),
                  SizedBox(),
                  Button(text: 'Del', color: 0xFF11998E, click: btnOnClick),
                  Button(text: '%', color: 0xFF11998E, click: btnOnClick),
                  Button(text: '7', color: 0xFF969696, click: btnOnClick),
                  Button(text: '8', color: 0xFF969696, click: btnOnClick),
                  Button(text: '9', color: 0xFF969696, click: btnOnClick),
                  Button(text: 'X', color: 0xFF11998E, click: btnOnClick),
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
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF11998E),
                    ),
                    onPressed: () {},
                    child: Text(
                      '=',
                      style: TextStyles.sfprotextRegular25
                          .copyWith(color: Color(0xFFEEF0F2), fontSize: 32),
                    ),
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
