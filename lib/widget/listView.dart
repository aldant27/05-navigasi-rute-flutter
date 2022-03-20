import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';
import 'package:navigasi/Pages/item_page.dart';

class ListView_widget extends StatelessWidget {
  const ListView_widget({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, ItemPage.routeName, arguments: item);
            },
            child: Column(children: [
              Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                          child: Text(
                        item.stock.toString(),
                        textAlign: TextAlign.center,
                      )),
                      Expanded(
                          child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ))
                    ],
                  ),
                ),
              ),
            ]),
          );
        });
  }
}
  