import 'package:flutter/material.dart';
import '../dummydata.dart';
import '../widgets/categoryitem.dart';
import '../widgets/mealitem.dart';

class Categorymeals extends StatelessWidget {
  
final String name;
final String id;
Categorymeals( this.name,  this.id);




  @override
  Widget build(BuildContext context) {

    final categorymeals= dUMMYMEALS.where((element) => element.categories.contains(id)).toList();
    return  Scaffold(
      appBar: AppBar(title: Text(name)
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return MealItem(title: categorymeals[index].title,
        imageUrl:categorymeals[index].imageUrl ,
        duration: categorymeals[index].duration,
        affordability: categorymeals[index].affordability,
        complexity: categorymeals[index].complexity,
        id:categorymeals[index].id,
     
        );
      },itemCount: categorymeals.length,
      
      
      )
      
    );
  }
}
