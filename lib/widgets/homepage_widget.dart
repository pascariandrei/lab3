import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/buttons_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Container(
      child: ButtonWidget(),
      )
    );
  }
}
