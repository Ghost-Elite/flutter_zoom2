import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menuItem.dart';


class MenuPage extends StatelessWidget {
   final MenuItem currentItem;
   final ValueChanged<MenuItem> onSelectedItem;
  const MenuPage({
    Key key,
     this.currentItem,
     this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Theme(
      data: ThemeData.dark(), child: Scaffold(
    backgroundColor: Colors.indigo,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          ...MenuItems.all.map(buildMenuItem).toList(),
          Spacer(flex: 2,),
        ],
      ),
    ),
  ));
  Widget buildMenuItem(MenuItem item)=> ListTileTheme(

    child: ListTile(
      selectedTileColor: Colors.black26,
      selected: currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () => onSelectedItem(item),
    ),
  );
}

class MenuItems{
  static const payment = MenuItem('Payment',Icons.payment);
  static const promos = MenuItem('Promos',Icons.card_giftcard);
  static const notification = MenuItem('Notification',Icons.notifications);
  static const help = MenuItem('Help',Icons.help);
  static const aboutUs = MenuItem('About Us',Icons.info_outline);
  static const rateUs = MenuItem('Rate Us',Icons.star_border);
  static const all = <MenuItem>[
    payment,
    promos,
    notification,
    help,
    aboutUs,
    rateUs,
  ];
}
