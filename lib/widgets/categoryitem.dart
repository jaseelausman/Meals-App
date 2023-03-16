import 'package:flutter/material.dart';
import '../dummydata.dart';
import '../Screens/categories_screen.dart';
import '../Screens/categorymeals.dart';



class CategoryItem extends StatelessWidget {
  
final String categoryId;
final String categoryTitle;
final Color color;
const CategoryItem( this.categoryId, this.categoryTitle,this.color);

void Selectcategory(BuildContext ctx)
{
 Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
  return Categorymeals(categoryTitle, categoryId);
 },
 )
 );
}


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>Selectcategory(context),
      splashColor: Colors.red,
      child: Container(
        padding:EdgeInsets.all(15),
        child: Text(categoryTitle),
        
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
        
        borderRadius:BorderRadius.circular(15),
        gradient:LinearGradient(
        colors:[
        color.withOpacity(0.5)
        ,color
        ]
        ) 
        )
       
      ),
    );
  }
}