import 'package:currency/myProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant.dart';

class Picker extends StatelessWidget {
  Picker(this.setCurrency,) ;
  Function setCurrency ;
//  Picker(this.currencyPicker);
  @override
  Widget build(BuildContext context) {
    MyProvider myProvider =  Provider.of<MyProvider>(context);
    return CupertinoPicker(
      magnification: 1.3,
        diameterRatio:0.8 ,
        squeeze: 0.8,
        itemExtent: 32,
        onSelectedItemChanged: (value) {
          setCurrency(myProvider.myMap.keys.toList()[value])  ;
        },
        children: myProvider.myMap.keys.toList().map((e) => Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            e,
            style: TextStyle(color: mainColor,fontWeight:FontWeight.bold ,fontSize: 15)
            ,),
        ),).toList()
    );
  }
}