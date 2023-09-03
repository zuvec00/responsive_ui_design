import 'package:flutter/material.dart';
import 'package:responsive_design_app/util/drawers.dart';

import '../util/gridviewtile.dart';
import '../util/tile.dart';

class DesktopScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
        ),
        body: Row(
          children: [
            //openDrawer
            MyDrawer(),
            //rest of the body,
            Expanded(
              flex: 2,
              child: Column(children: [
                //4 boxes on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                        return MyTile();
                      }),
                )
              ]),
            ),
            Expanded(
                child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey))),
                const SizedBox(height: 20),
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white)))
              ],
            )),
          ],
        ));
  }
}
