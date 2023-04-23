import 'dart:math';

import 'package:app1203/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({required this.id});

  var rnd = Random();
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Page 2\n\narg = $id',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnBack(context),
            btnPage3(context)
          ],
        ),
      ),
    );
  }

  Widget btnBack(BuildContext context) => TextButton(
        child: Text(
          '<< Back',
          textScaleFactor: 1.3,
        ),
        onPressed: () => Navigator.pop(
          context,
          rnd.nextInt(1000),
        ),
      );

  btnPage3(BuildContext context) => TextButton(
        child: Text(
          'Go to Page 3 >>',
          textScaleFactor: 1.3,
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Page3(
              a: 13,
              b: 'Lucky number',
            ),
          ),
        ),
      );
}
