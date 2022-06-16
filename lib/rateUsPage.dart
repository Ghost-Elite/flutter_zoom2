import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menuWidget.dart';

class RateUsPage extends StatelessWidget {
  const RateUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(' RateUs '),
        leading: MenuWidget(),
      ),
    );
  }
}
