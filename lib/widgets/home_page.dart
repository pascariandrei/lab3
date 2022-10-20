import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/title_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Controllers/calculator-controller.dart';
import '../resources/custom_colors.dart';
import '../resources/text_styles.dart';
import 'btn-widget.dart';
import 'numdial_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(CalculatorController());
  }
  @override
  Widget build(BuildContext context) {
    //final CalculatorController calculatorController = Get.find();
   // final controller = Get.put(CalculatorController());
    return Scaffold(
      body: Container(
        color: Color(0xFFF5F5F5),
        padding: const EdgeInsets.only(bottom: 0, top: 63),
        child: Column(
          children: [
            TitleWidget(),
            Expanded(
              child: NumberDials(),
            ),
          ],
        ),
      ),
    );
  }
}

  double dbl = 0.0;
