
import 'package:flutter/material.dart';
import 'package:ui/view/home_Screen.dart';

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>Home_Screen(),
        },
      ),
  );
}