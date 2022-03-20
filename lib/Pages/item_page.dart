import 'package:flutter/material.dart';
import 'package:navigasi/widget/cardItem.dart';
class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key, required this.name, required this.price, required this.stock})
      : super(key: key);

  static const routeName = '/item';
  final String name;
  final int price;
  final int stock;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Aldant Yafi Abida -2031710009')),
          body: Container(
            margin: EdgeInsets.all(8),
            child: Column(children: [
              CardItem(name: name, stock: stock, price: price),
            ]),
          ),
        ));
  }

 }
