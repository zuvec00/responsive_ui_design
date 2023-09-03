import 'package:flutter/material.dart';
import 'package:responsive_design_app/util/drawers.dart';
import 'package:responsive_design_app/util/gridviewtile.dart';
import 'package:responsive_design_app/util/tile.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

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
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
        ]));
  }
}
