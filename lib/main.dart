import 'package:app1203/page2.dart';
import 'package:app1203/page3.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(App1203());
}

class App1203 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: HomePage(),
      );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Home Page',
                textScaleFactor: 2.0,
              ),
              SizedBox(
                height: 60,
              ),
              btnPage2(context),
              btnPage3(context),
            ],
          ),
        ),
      );

  Widget btnPage2(BuildContext ctx) => TextButton(
        child: Text(
          'Go to Page 2 >>',
          textScaleFactor: 1.5,
        ),
        onPressed: () {
          Navigator.push(
                  ctx, MaterialPageRoute(builder: (ctx) => Page2(id: 999)))
              .then((value) => alert(ctx, 'ข้อมูลที่ส่งกลับมา : $value'));
        },
      );

  Widget btnPage3(BuildContext ctx) => TextButton(
        child: Text(
          'Go to Page 3 >>',
          textScaleFactor: 1.5,
        ),
        onPressed: () {
          Navigator.push(
            ctx,
            MaterialPageRoute(
              builder: (ctx) => Page3(
                a: 555,
                b: 'hahaha',
              ),
            ),
          ).then((value) {
            var v = value ?? [0, 'zero'];
            var v0 = v[0];
            var v1 = v[1];
            alert(ctx, 'ข้อมูลที่ส่งกลับมา\n[$v0, $v1]');
          });
        },
      );

  alert(BuildContext ctx, String msg) => showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
            content: Text(
              msg,
              textScaleFactor: 1.3,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: Text(
                  'OK',
                  textScaleFactor: 1.3,
                ),
              ),
            ],
          ));
}
