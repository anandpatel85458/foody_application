import 'package:flutter/material.dart';
import 'package:sam/Favouritepage.dart';
import 'package:sam/Foodpage.dart';
import 'package:sam/notificationpage.dart';
import 'package:sam/profilepage.dart';

class Housepage extends StatefulWidget {
  const Housepage({Key? key}) : super(key: key);

  @override
  State<Housepage> createState() => _HousepageState();
}

class _HousepageState extends State<Housepage> {
  var _item = 0;
  List <Widget>   list = <Widget>[
    Homepage(),
    Favouritepage(),
    notificationpage(),
    profile(),
  ];
  void _onItemTapped (int index) {
    setState(() {
      _item=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
       // selectedFontSize: ,
        //backgroundColor: Colors.black,
        currentIndex: _item,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 25,),
            backgroundColor:  Colors.black,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 25,),
            backgroundColor:  Colors.black,
           label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 25,),
            backgroundColor:  Colors.black,
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 25,),
            backgroundColor:  Colors.black,
           label: 'profile',
          )
        ],
      ),
      body: list.elementAt(_item),
    );
  }
}
