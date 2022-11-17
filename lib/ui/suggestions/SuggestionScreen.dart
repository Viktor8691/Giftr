import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:giftr/extension/NumExtension.dart';
import 'package:giftr/extension/StringExtension.dart';

class SuggestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      itemCount: 20,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        return itemView();
      },
    );
  }

  Widget itemView() => Padding(
    padding: EdgeInsets.only(top: 10, ),
    child: Card(
      child: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: double.infinity, height: 150, color: Colors.black12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: 'CARREFOUR'.toText(color: Colors.orange, fontSize: 18, isBold: true),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: 'Kid Icecream'.toText()),
            5.toVerticalSizedBox,
          ],
        ),
        Positioned(
          right: 5, top: 135,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue
              ),
              child: 'usd 15'.toText(color: Colors.white),
            ))
      ],),
    ));
}
