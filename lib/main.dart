import 'package:currency/myProvider.dart';
import 'package:currency/screen/firstHalf.dart';
import 'package:currency/screen/secondHalf.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constant.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (BuildContext context) => MyProvider(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  int tabBottomController = 0;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {
        tabBottomController = tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecf0f1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFecf0f1),
        elevation: 0.0,
        title: Text(
          'converter units'.toUpperCase(),
          style: textStyleUp,
        ),
        iconTheme: IconThemeData(color: mainColor),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          Expanded(flex: 2, child: FirstHalf()),
          Expanded(flex: 1, child: SecondHalf()),
        ],
      ),

      bottomNavigationBar: ConvexAppBar(
        style:TabStyle.flip ,
        elevation: 8,
        color: Color(0xFF8B0000),
        backgroundColor: Color(0xFFcaffbf),
        onTap: (value) {
          Provider.of<MyProvider>(context, listen: false).setTabBottomController(value);
          Provider.of<MyProvider>(context, listen: false).getInitial();
          Provider.of<MyProvider>(context, listen: false).getMap();
          tabController.animateTo(value);
        },
        items: items,
        initialActiveIndex: 2,
      ),
    );
  }
}
