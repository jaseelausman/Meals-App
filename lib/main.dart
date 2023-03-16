import 'package:flutter/material.dart';
import 'Screens/categories_screen.dart';
import './Screens/tabs_screen.dart';

void main() {
  runApp(MaterialApp(
   
   theme:ThemeData(
    primarySwatch: Colors.amber,
    
    ),
    home: TabsScreen(),
  )
    );
    
}
