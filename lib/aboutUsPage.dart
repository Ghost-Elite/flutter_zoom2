import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menuWidget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('AboutUs  '),
        leading: MenuWidget(),
      ),
    );
  }
}
