import 'dart:async';
import 'package:get/get.dart';

class CalculatorController extends GetxController{
  RxDouble firstNum = 0.0.obs;
  RxDouble secondNum = 0.0.obs;
  RxString history = ''.obs;
  RxString result = ''.obs;
  RxString textDisplay = ''.obs;
  RxString operation = ''.obs;

  void printResultplus(String el){
    result.value = (firstNum.value + secondNum.value).toString();
    if(result.value.toString().substring(result.value.toString().length - 2, result.value.toString().length) == ".0"){
      result.value = result.value.toString().substring(0, result.value.toString().length -2 );
    }else if(result.toString().substring(
        result.value.toString().length - 2, result.value.toString().length) !=
        ".0"){
      result.value = result.value.toString();
    }
  }
  void printResultminus(String el){
    result.value = (firstNum.value - secondNum.value).toString();
    if(result.value.toString().substring(result.value.toString().length - 2, result.value.toString().length) == ".0"){
      result.value = result.value.toString().substring(0, result.value.toString().length -2 );
    }else if(result.value.toString().substring(
        result.value.toString().length - 2, result.value.toString().length) !=
        ".0"){
      result.value = result.value.toString();
    }
  }
  void printResultmult(String el){
    result.value = (firstNum.value * secondNum.value).toString();
    if(result.value.toString().substring(result.value.toString().length - 2, result.value.toString().length) == ".0"){
      result.value = result.value.toString().substring(0, result.value.toString().length -2 );
    }else if(result.value.toString().substring(
        result.value.toString().length - 2, result.value.toString().length) !=
        ".0"){
      result.value = result.value.toString();
    }
  }
  void printResultdiv(String el){
    result.value = (firstNum.value / secondNum.value).toString();
    if(result.value.toString().substring(result.value.toString().length - 2, result.value.toString().length) == ".0"){
      result.value = result.value.toString().substring(0, result.value.toString().length -2 );
    }else if(result.value.toString().substring(
        result.value.toString().length - 2, result.value.toString().length) !=
        ".0"){
      result.value = result.value.toString();
    }
  }


  void doubleparse(String el){
    if (secondNum.value.toString().substring(
        secondNum.value.toString().length - 2, secondNum.value.toString().length ) ==
        ".0" && firstNum.value.toString().substring(
        firstNum.value.toString().length - 2, firstNum.value.toString().length) ==
        ".0") {
      history.value =
      "${firstNum.value.toString().substring(0, firstNum.value.toString().length - 2)} $el ${secondNum.value.toString().substring(0, secondNum.value.toString().length - 2)}";
      //"${firstNum.toString()} + ${secondNum.toString().substring(0, secondNum.toString().length - 2)} $el";
    } else if(secondNum.value.toString().substring(
        secondNum.value.toString().length - 2, secondNum.value.toString().length ) !=
        ".0" && firstNum.value.toString().substring(
        firstNum.value.toString().length - 2, firstNum.value.toString().length) ==
        ".0"){
      history.value =
      "${firstNum.value.toString().substring(0, firstNum.value.toString().length - 2)} $el ${secondNum.value.toString()}";
    }
    else if(secondNum.value.toString().substring(
        secondNum.value.toString().length - 2, secondNum.value.toString().length ) ==
        ".0" && firstNum.toString().substring(
        firstNum.value.toString().length - 2, firstNum.value.toString().length) !=
        ".0"){
      history.value =
      "${firstNum.value.toString()} $el ${secondNum.value.toString().substring(0, secondNum.value.toString().length - 2)}";
    }

    else {
      history.value = "${firstNum.value} $el ${secondNum.value}";
    }
  }


  void btnOnClick(String el) {
    if (el == 'C') {
      textDisplay.value = '';
      firstNum.value = 0.0;
      secondNum.value = 0.0;
      result.value = '';
      history.value = '';
    } else if (el == '+' || el == '-' || el == '*' || el == '/') {
      firstNum.value = double.parse(textDisplay.value);
      result.value = '';
      if (firstNum.value.toString().substring(
          firstNum.value.toString().length - 2, firstNum.value.toString().length) ==
          ".0") {
        history.value =
        "${firstNum.value.toString().substring(0, firstNum.value.toString().length - 2)} $el";
      } else {
        history.value = "${firstNum.value} $el";
      }
      operation.value = el;
    } else if (el == '=') {
      secondNum.value = double.parse(textDisplay.value);
      doubleparse(operation.value);
      printResultplus(operation.value);
      //result = (firstNum + secondNum).toString();
      if (operation.value == '-') {
        doubleparse(operation.value);
        printResultminus(operation.value);
      }
      if (operation.value == '*') {
        doubleparse(operation.value);
        printResultmult(operation.value);
      }
      if (operation.value == '/') {
        doubleparse(operation.value);
        printResultdiv(operation.value);
      }
    } else if (el == 'Del') {
      firstNum.value = double.parse(textDisplay.value);
      result.value = firstNum.value.toString().substring(0, firstNum.value.toString().length - 1);
    }
    else {
      result.value = "${textDisplay.value}$el";
    }
    textDisplay.value = result.value;
  /*  setState(() {
      textDisplay = result;
    });*/
  }

}
