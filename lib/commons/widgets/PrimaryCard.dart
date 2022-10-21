
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryCard extends StatelessWidget{

  String cardTitle = "";
  int leftDigit = 0;
  int rightDigit = 0;

  PrimaryCard(this.cardTitle, this.leftDigit, this.rightDigit);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 100,
      widthFactor: 450,
      child: Card(
        child: Column(
          children: [
            Row(
              children: const [
              Text("nothing"),
              ],
            ),
            Row(
              children: [
                Text(
                    cardTitle,
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                    leftDigit.toString(),
                  style: TextStyle( color: Colors.white),
                ),
                Divider(
                  color: Colors.white,
                  height: 20,
                ),
                Text(
                    rightDigit.toString(),
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}

