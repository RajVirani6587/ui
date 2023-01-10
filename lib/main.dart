
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/provider/api_class.dart';
import 'package:ui/provider/provider.dart';
import 'package:ui/view/api.dart';
import 'package:ui/view/bottom_bar.dart';
import 'package:ui/view/home_Screen.dart';

void main()
{
  runApp(
      MultiProvider(
        providers: [
          ListenableProvider<bootam_Provider>(create: (Context)=>bootam_Provider()),
          ListenableProvider<api_provider>(create: (context)=>api_provider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=>Api_Screen(),
            'l':(context)=>Tabbar_Screen(),
            'home':(context)=>Home_Screen(),
          },
        ),
      ),
  );
}