import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menuWidget.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(' Promo '),
        leading: MenuWidget(),
      ),
    );
  }
}
