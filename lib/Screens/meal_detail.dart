import 'package:flutter/material.dart';
import '../dummydata.dart';


class MealDetail extends StatelessWidget
 {
  final String mid;
  final String name;
  final String image;

  const  MealDetail( this.mid,this.name,this.image);


  @override
  Widget build(BuildContext context) {

 final selectedMeal= dUMMYMEALS.firstWhere((meal) => mid==meal.id);
   
   
    return Scaffold(
      appBar: AppBar(title:Text('Recipe of $name')),
      body: Center(
        child: Column(
            children: [
            Image.network(selectedMeal.imageUrl),
            ListView.builder(itemBuilder: (ctx,index)=>
            Card(child: Text
            (selectedMeal.steps[index])
            )
            ),
            
             
                  
            ],
          ),
      ),
      
    );
  }
}
