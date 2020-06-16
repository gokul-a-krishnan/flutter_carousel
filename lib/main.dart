import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttercarousel/page/routes.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator<Router>(
        router: Router(),
      ),
    );
  }
}
