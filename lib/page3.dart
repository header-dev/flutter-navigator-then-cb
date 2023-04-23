import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  Page3({required this.a, required this.b});

  var a;
  var b;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page3'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Page 3\n\na = $a, b = $b',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnBack(context),
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
          [123, 'one-two-three'],
        ),
      );
}
