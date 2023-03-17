
import 'package:flutter/material.dart';
import 'package:meals_app/Screens/categories_screen.dart';
import 'package:meals_app/Screens/categorymeals.dart';
import './filterscreen.dart';


class MainDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(child:
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
        onTap:(){Navigator.of(context).pop();
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoriesScreen(),)
        ,
        );},

        leading: Icon(Icons.restaurant),
        title: Text("Meals",style:TextStyle(fontSize: 20)),

       ),
        ListTile(
         onTap: (){Navigator.of(context).pop();
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Filterscreen(),),);},
        leading: Icon(Icons.star),
        title: Text("Favourites",style:TextStyle(fontSize: 20)),
       )
      ],
    )
    );
  }
}