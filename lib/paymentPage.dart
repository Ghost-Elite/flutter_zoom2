import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menuWidget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Payment Page'),
        leading: MenuWidget(),
      ),
    );
  }
}
