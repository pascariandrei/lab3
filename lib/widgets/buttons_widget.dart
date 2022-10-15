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
      child:
          GridWidget(),

          // ButtonWidget()

      ),
    );
  }
}
