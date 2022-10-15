import 'package:flutter/material.dart';

import '../resources/text_styles.dart';

class Button extends StatelessWidget {
  const Button({required this.text,required this.color,required this.click, this.style});
  final String? text;
  final int color;
  final Function click;
  final String? style;



  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () =>click(text),
      child: Text(
        '$text',
        style: TextStyles.sfprotextRegular25
            .copyWith(color: Color(color), fontSize: 32),
      ),
    );
  }
}
