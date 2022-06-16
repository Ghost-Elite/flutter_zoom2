import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menuWidget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(' Notification '),
        leading: MenuWidget(),
      ),
    );
  }
}
