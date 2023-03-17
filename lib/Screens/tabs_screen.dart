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

 final List<Widget> _pages=[
  CategoriesScreen(),
  Favorites(),
];

int _selectpageindex=0;



void _selectPage(int index)
{
 setState(() {
   _selectpageindex=index;
 });
}


  @override
  Widget build(BuildContext context) {
    return DefaultTabController
    (length: 2, child: 
    Scaffold(
    appBar:AppBar(title: Text("Meals App"),
   
    ),
    
    body:_pages[_selectpageindex],
    drawer: Drawer(child:
    Column(
      children: [
        Container(height: 130,
        width: double.infinity,
        color: Colors.amber,
        alignment: Alignment.bottomLeft,

        child:Text("Cooking Up",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        
        ),
       SizedBox(height: 10,),
       ListTile(
      
        leading: Icon(Icons.restaurant),
        title: Text("Meals",style:TextStyle(fontSize: 20)),
        
       ),
        ListTile(
       
        leading: Icon(Icons.star),
        title: Text("Favourites",style:TextStyle(fontSize: 20)),
       )
      ],
    )
    ),
    bottomNavigationBar: BottomNavigationBar(
      onTap: _selectPage,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.category),label:"categories"
      ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"Favourites")
    ],),
    )
    );
    
  }
}