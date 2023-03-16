// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../dummydata.dart';
import '../widgets/categoryitem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return GridView(
      padding:EdgeInsets.all(15),
      
     
    gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent
    (
      maxCrossAxisExtent: 200,
    childAspectRatio: 3/2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20
    ),
    children: 
      
      DUMMY_CATEGORIES.map((category)=>
      CategoryItem(category.id,category.title,category.color)
      ).toList(),
    
    );
    
  }
}