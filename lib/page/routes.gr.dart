// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluttercarousel/page/home_page.dart';
import 'package:fluttercarousel/page/one.dart';
import 'package:fluttercarousel/page/two.dart';
import 'package:fluttercarousel/page/three.dart';

abstract class Routes {
  static const homePage = '/';
  static const one = '/one';
  static const two = '/two';
  static const three = '/three';
  static const all = {
    homePage,
    one,
    two,
    three,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage(),
          settings: settings,
        );
      case Routes.one:
        return MaterialPageRoute<dynamic>(
          builder: (context) => One(),
          settings: settings,
        );
      case Routes.two:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Two(),
          settings: settings,
        );
      case Routes.three:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Three(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
