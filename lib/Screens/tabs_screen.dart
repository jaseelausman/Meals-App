// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meals_app/Screens/categories_screen.dart';
import '../Screens/favourites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController
    (length: 2, child: 
    Scaffold(
    appBar:AppBar(title: Text("Meals App"),
    bottom: TabBar(tabs:[ 
    Tab(
      icon: Icon(
        Icons.home)
        ,text: "Categories",),
    Tab(icon:Icon(Icons.star),text:"Favourites"),
    ],
    )
    ),
    body: TabBarView(children: [
      CategoriesScreen(),
      Favorites(),
    ]),
    ));
    
  }
}