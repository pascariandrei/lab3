import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/home_page.dart';
import 'package:get/get.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
/*await  WidgetsFlutterBinding.ensureInitialized();*/
  runApp(const GetMaterialApp(home: MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),

    );
  }

}

