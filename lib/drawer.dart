import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.collections,
              text: 'Gallery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'Music',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.contact_phone,
              text: 'Contact',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              'Label',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Disimpan',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(4);
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      otherAccountsPictures: [
        ClipOval(
          child: Image(image: AssetImage('assets/images/2.jpg'), fit: BoxFit.cover),
        ),
        ClipOval(
          child: Image(image: AssetImage('assets/images/3.jpg'), fit: BoxFit.cover),
        ),
      ],
      accountName: Text('Rahma'),
      accountEmail: Text('rahma@flutter.com'),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
