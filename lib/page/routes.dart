import 'package:auto_route/auto_route_annotations.dart';
import 'package:fluttercarousel/page/three.dart';
import 'package:fluttercarousel/page/two.dart';

import 'home_page.dart';
import 'one.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomePage homePage;
  One one;
  Two two;
  Three three;
}
