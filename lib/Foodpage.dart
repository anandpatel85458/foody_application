import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sam/Cold%20drink.dart';
import 'package:sam/Favouritepage.dart';
import 'package:sam/Frenchfrice.dart';
import 'package:sam/HomeBottomBar.dart';
import 'package:sam/Housepage.dart';
import 'package:sam/notificationpage.dart';
import 'package:sam/pizza.dart';
import 'package:sam/profilepage.dart';
import 'MainDrawer.dart';
import 'ItemsWidget.dart';

class Homepage extends StatefulWidget{

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context){

    return DefaultTabController(length: 4, child: Scaffold(
        appBar: AppBar(
          title: const Text("Food Beast",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          toolbarHeight: 50,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          elevation: 5,
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],

        ),

        drawer: Drawer(

          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  accountName: Text(
                    "Anand patel",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  accountEmail: Text(
                    "anandpatek82@gmail.com",
                    style: TextStyle(color: Colors.black45, fontSize: 14),
                  ),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/vaman.jpg'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.policy,
                  color: Colors.black,
                ),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                title: Text(
                  "Favorite",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.black,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(padding:EdgeInsets.only(top: 25) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // list.elementAt(_index),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // InkWell(
                    //   onTap: () {},
                    //   child: Container(
                    //     padding: EdgeInsets.all(8),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child: Icon(CupertinoIcons.search,color: Colors.white,size: 35,),
                    //   ),
                    // ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: Icon(Icons.search,
                    //     color: Colors.white,size: 35,),
                    //
                    // )
                  ],),),
              SizedBox(height: 2),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('Hot & fast food',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),),
              SizedBox(height: 5),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text('Delivery on time',style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                ),),),
              SizedBox(height: 2),
              TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 25),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(text: "Burger",),
                  Tab(text: "Pizza"),
                  Tab(text: "French fries"),
                  Tab(text: "Cold drink"),
                ],),
              Flexible(
                  flex: 1,
                  child: TabBarView(children: [
                    ItemsWidget(),
                    pizza(),
                    Frenchfrice(),
                    Colddrink(),
                   // Container(),
                  ],
                  )),
            ],
          ),
        ),
      ) ,
      // bottomNavigationBar: HomeBottomBar()
    ),
    );
  }
}


