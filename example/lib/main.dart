import 'package:flutter/material.dart';
import 'package:responsive_x/responsive_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig(
              designScreenWidth: 360,
              designScreenHeight: 640,
            ).init(constraints, orientation);

            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: MyHomePage(),
            );
          },
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200.height,
          width: 200.width,
          color: Colors.pink,
          child: Center(
            child: Text(
              'ResponsiveX',
              style: TextStyle(
                fontSize: 20.fontSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
