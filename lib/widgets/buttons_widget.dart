import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/grid_widget.dart';
import 'package:flutter_calculator/widgets/output_widget.dart';

import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  List<String> buttons = ['1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFFF5F5F5),
      padding: const EdgeInsets.only(bottom: 0, top: 63),
      child: Column(
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
          ),
          OutPutWidget(),
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 16, right: 16, bottom: 12),
                child: GridWidget(),
              )),

          // ButtonWidget()
        ],
      ),
    ));
  }
}
