
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double mediaWidth({
  required BuildContext context,
  double? width,
}){
  return MediaQuery.of(context).size.width * width!;
}

double mediaHeight({
  required BuildContext context,
  double? height,
}){
  return MediaQuery.of(context).size.height * height!;
}

TextTheme? style(BuildContext context){
  return  Theme.of(context).textTheme;
}