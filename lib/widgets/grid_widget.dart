import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.only(top: 20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: <Widget>[
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              'C',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFFFF887D), fontSize: 32),
            ),
          ),
          SizedBox(),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              'Del',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF11998E), fontSize: 32),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '%',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF11998E), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '7',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '8',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '9',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              'X',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF11998E), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '4',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '5',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '6',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '-',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF11998E), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '1',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '2',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '3',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '+',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF11998E), fontSize: 32),
            ),
          ),SizedBox(),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '0',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text(
              '.',
              style: TextStyles.sfprotextRegular25
                  .copyWith(color: Color(0xFF969696), fontSize: 32),
            ),
          ),TextButton(
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
        ]);
  }
}
