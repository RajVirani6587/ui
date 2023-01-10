import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui/view/home_Screen.dart';

import '../provider/provider.dart';

class Tabbar_Screen extends StatefulWidget {
  const Tabbar_Screen({Key? key}) : super(key: key);

  @override
  State<Tabbar_Screen> createState() => _Tabbar_ScreenState();
}

class _Tabbar_ScreenState extends State<Tabbar_Screen> {
  List WidgetsList=[Home_Screen(),Home_Screen(),Home_Screen(),];

   bootam_Provider? bottom_providerT;
   bootam_Provider? botttom_providerF;

  @override
  Widget build(BuildContext context) {
    bottom_providerT =Provider.of<bootam_Provider>(context,listen: true);
    botttom_providerF = Provider.of<bootam_Provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: WidgetsList[bottom_providerT!.i],
        bottomNavigationBar:ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(90),
            topLeft: Radius.circular(90),
          ),
          child: BottomNavigationBar(
            onTap:(value){
              botttom_providerF!.changeicon(value);
            },
            currentIndex:botttom_providerF!.i,
             selectedItemColor: Colors.redAccent,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items:[
              BottomNavigationBarItem(icon:Icon(Icons.home),label: ""),
              BottomNavigationBarItem(icon:Icon(Icons.shopping_cart_outlined),label: ""),
              BottomNavigationBarItem(icon:Icon(Icons.search),label: ""),
            ],
          ),
        ),
      ),
    );


  }
}
