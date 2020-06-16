import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttercarousel/page/routes.gr.dart';
import 'package:random_color/random_color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> cards;

  @override
  void initState() {
    super.initState();
    cards = List<Widget>();
    createCarouselCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CarouselSlider.builder(
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
              child: InkWell(
                onTap: () {
                  goToScreen(itemIndex);
                },
                child: cards[itemIndex],
              ),
            ),
            options: CarouselOptions(height: 400.0, viewportFraction: 0.8),
          ),
        ],
      ),
    );
  }

  void createCarouselCards() {
    for (int i = 0; i < 5; i++) {
      cards.add(Card(
        child: FlutterLogo(
          size: 150,
          colors: RandomColor().randomMaterialColor(),
        ),
      ));
    }
  }

  void goToScreen(int itemIndex) {
    switch (itemIndex) {
      case 0:
        ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.one);
        break;
      case 1:
        ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.two);
        break;
      case 2:
        ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.three);
        break;
    }
  }
}
