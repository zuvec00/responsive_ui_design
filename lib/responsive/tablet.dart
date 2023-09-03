import 'package:flutter/material.dart';

import '../util/drawers.dart';
import '../util/gridviewtile.dart';
import '../util/tile.dart';

class TabletScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
        ),
        drawer: MyDrawer(),
        body: Column(children: [
          //4 boxes on the top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return const MyBox();
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (builder, context) {
                  return const MyTile();
                }),
          )
        ]));
  }
}
