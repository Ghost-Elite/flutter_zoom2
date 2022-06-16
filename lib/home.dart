import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom/menuItem.dart';
import 'package:flutter_zoom/paymentPage.dart';
import 'package:flutter_zoom/promoPage.dart';
import 'package:flutter_zoom/rateUsPage.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'aboutUsPage.dart';
import 'helpPage.dart';
import 'menuPage.dart';
import 'notificationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItem currentItem = MenuItems.payment;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        style: DrawerStyle.Style1,
        borderRadius: 40,
        angle: -10,
        slideWidth: MediaQuery.of(context).size.width * 0.8,
        showShadow: true,
        backgroundColor: Colors.orangeAccent,
        mainScreen: getScreen(),
        menuScreen: Builder(
          builder: (context) => MenuPage(
            currentItem:currentItem,
            onSelectedItem: (item){
              setState(() =>currentItem = item);
              ZoomDrawer.of(context).close();
            },
          ),
        ),

    );
  }
  Widget getScreen(){
    switch (currentItem){
      case MenuItems.payment:
        return PaymentPage();
      case MenuItems.promos:
        return PromoPage();
      case MenuItems.notification:
        return NotificationPage();
      case MenuItems.help:
        return HelpPage();
      case MenuItems.aboutUs:
        return AboutUsPage();
      case MenuItems.rateUs:
        return RateUsPage();
    }
  }
}
