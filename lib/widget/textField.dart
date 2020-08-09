

import 'package:currency/myProvider.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class CurrencyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Enter number',
        fillColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
          )
        ),
      ),
      onChanged: (value) {
       Provider.of<MyProvider>(context,listen: false).setTextField(value) ;
      },
    );
  }
}

//
//class CurrencyTextField extends StatefulWidget {
//
//  String currency ;
//  Function setTextField ;
//  CurrencyTextField(this.setTextField);
//
//  @override
//  _CurrencyTextFieldState createState() => _CurrencyTextFieldState();
//}
//
//class _CurrencyTextFieldState extends State<CurrencyTextField> {
//  @override
//  Widget build(BuildContext context) {
//    return TextField(
//      keyboardType: TextInputType.number,
//      decoration: InputDecoration(
//        labelText: 'Enter number',
//        fillColor: Colors.white,
//        filled: true,
//        hintStyle: TextStyle(color: Colors.black),
//        border: OutlineInputBorder(
//            borderSide: BorderSide(color: Colors.teal),
//            borderRadius: BorderRadius.only(
//              bottomLeft: Radius.circular(8.0),
//              bottomRight: Radius.circular(8.0),
//            )
//        ),
//      ),
//      onChanged: (value) {
//
//        widget.setTextField(value) ;
//        setState(() {
//
//        });
//      },
//    );
//  }
//}

