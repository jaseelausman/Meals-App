import 'package:flutter/material.dart';

class Categorymeals extends StatelessWidget {
  
final String name;
Categorymeals(  this.name);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(name)
      ),
      body:Center(child: Text("Recipe of  $name "))
    );
  }
}
