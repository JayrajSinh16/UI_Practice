import 'package:flutter/material.dart';

Color getColor(BuildContext context,double precent){
  if(precent >=0.5){
    return Theme.of(context).primaryColor;
  }
  else if(precent >= 0.25){
    return Colors.orange;
  }
  return Colors.red;
}