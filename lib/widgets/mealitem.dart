import 'package:flutter/material.dart';
import '../models/meals.dart';
import '../dummydata.dart';
import '../Screens/meal_detail.dart';
class MealItem extends StatelessWidget {


final String title;
final String imageUrl;
final int duration;
final Complexity complexity;
final Affordability affordability;



final String  id;


MealItem({ required this.title, required this.imageUrl, required this.duration,
required this.complexity,required this.affordability,required this.id,
});


void selectedfn(BuildContext context)
{ 
  Navigator.of(context).push(MaterialPageRoute(builder: (_){
   return MealDetail(id,title,imageUrl);
  }));

}



  @override
  Widget build(BuildContext context) {
    return InkWell(
   onTap:()=> selectedfn(context),
   child:
    Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    elevation: 4,
    margin: EdgeInsets.all(10)
    ,child:Column(children: 
    [Stack
    (children: [
      ClipRRect(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15)
      ),
      child: Image.network(imageUrl),
      ),
        Positioned(
          bottom: 20,
          right:10,
          child: Container(
            width:250,
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            color: Colors.black54,
            child: Text(title, 
            style: TextStyle(fontSize: 26,color: Colors.white),
            softWrap: true,overflow: TextOverflow.fade,),
          ),
        )
    ],
  
    ),
    Padding(padding: EdgeInsets.all(20),child: 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Row( 
        children: [Icon(Icons.schedule),
                  Text(' $duration min' )]
                   ),
      
                  Row( 
        children: [Icon(Icons.work),
                  Text(' ${complexity.name}' )]
                  ),
                   Row( 
        children: [Icon(Icons.attach_money),
                  Text(' ${affordability.name}' )]
                  ),
      
      
   
    ],)
    
    )
     
    ]
    )));
  }
}
