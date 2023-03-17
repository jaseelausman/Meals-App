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
  final counti=selectedMeal.ingredients.length;
    final counts=selectedMeal.steps.length;
   
    return Scaffold(
      appBar: AppBar(title:Text('Recipe of $name')),
      body: Center(
        child: Column(
            children: [
            Image.network(selectedMeal.imageUrl),
            Text("Ingredients",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Expanded(child: 
            ListView.builder(itemBuilder: (ctx,index)=>
            Center(
              child: Card(child: Text
              (selectedMeal.ingredients[index])
              ),
     
            ),
           itemCount: counti,
            ),
            ),

            // Steps 

            Text("Steps",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Expanded(child: 
            ListView.builder(itemBuilder: (ctx,index)=>
            Center(
              child: Text
              (selectedMeal.steps[index])
              ),
              itemCount: counts,
            ),
          
            ),
             
              
            ],
          ),
      ),
      
    );
  }
}
