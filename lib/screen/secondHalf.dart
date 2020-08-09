

import 'package:flutter/material.dart';

import '../constant.dart';
import 'package:currency/myProvider.dart';
import 'package:provider/provider.dart';

class SecondHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyProvider myProvider =  Provider.of<MyProvider>(context);
    return Container(

      padding: EdgeInsets.only(top: 20),
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
        Text('Result',style: textStyleUp,
        textAlign: TextAlign.center,
      ),
          Container(
            constraints: BoxConstraints(
              minWidth: 100 ,
            ),
            decoration: boxDecoration,
            padding: EdgeInsets.all(10),
            height: 50,
            child: Text(myProvider.result,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,),
            )
          ), 
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListTile(title:Text(myProvider.fromUnit,style: textStyleUp,
                    textAlign: TextAlign.center,
                  ), subtitle: Text('1.0',style: numStyleUp,
                    textAlign: TextAlign.center,
                  ),),
                ),
                Expanded(child: Icon(Icons.trending_flat)),
                Expanded(
                  child: ListTile(title:Text(myProvider.toUnit,style: textStyleUp,
                    textAlign: TextAlign.center,
                  ), subtitle: Text('${(myProvider.myMap[myProvider.fromUnit]??1)/(myProvider.myMap[myProvider.toUnit]??1)}',style: numStyleUp,
                    textAlign: TextAlign.center,
                  ),),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
