import 'dart:math';

import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEAE5E5),

        body:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 15,bottom: 5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.align_horizontal_left,size: 40,),
                        Icon(Icons.person_pin,size: 40,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Text("Get your",style: TextStyle(fontSize: 25),),
                Text("Delicious Dosa",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width*0.70,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:15),
                            child: Icon(Icons.search,size: 30,),
                          ),
                          Text("Restarents, Foods...",style: TextStyle(),),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width*0.01,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      height: 60,
                      child: Center(child: Icon(Icons.align_vertical_center_rounded,color: Colors.white,)),
                      width: MediaQuery.of(context).size.width*0.20,
                      decoration: BoxDecoration(color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                          color: Colors.white
                          ),
                          height:60,
                          width: 60,
                          child: Icon(Icons.more_time_outlined,size: 35,),
                        ),
                        SizedBox(height: 5,),
                        Text("All",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                              color: Colors.white
                          ),
                          height:60,
                          width: 60,
                          child: Icon(Icons.ac_unit,size: 35,),

                        ),
                        SizedBox(height: 5,),
                        Text("Noodies",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(0,-15),
                      child: Column(
                        children: [
                          Card(
                            color: Colors.redAccent,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            elevation: 10,
                            child: Container(
                              height:60,
                              width: 60,
                              child: Icon(Icons.account_balance_rounded,size: 35,color: Colors.white,),
                            ),
                          ),
                          SizedBox(height: 3,),
                          Container(height: 2,width: 20,color: Colors.redAccent,),
                          SizedBox(height: 3,),
                          Text("Dosa",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                              color: Colors.white
                          ),
                          height:60,
                          width: 60,
                          child: Icon(Icons.accessible,size: 35,),
                        ),
                        SizedBox(height: 5,),
                        Text("Pizza",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                              color: Colors.white
                          ),
                          height:60,
                          width: 60,
                          child: Icon(Icons.radar_rounded,size: 35,),
                        ),
                        SizedBox(height: 5,),
                        Text("Dessert",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Transform.translate(
                    offset: Offset(0,40),
                    child: Transform.rotate(
                      angle: pi/2,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Popular",style: TextStyle(fontSize: 25,color: Colors.redAccent),),
                              Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width*0.15,
                                color: Colors.redAccent,
                              )
                            ],
                          ),
                          Container(width: MediaQuery.of(context).size.width*0.07,),
                          Text("New",style: TextStyle(color: Colors.black45,fontSize: 25),)
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        Container(
                          height: 290,
                          width: 175,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Column(
                            children: [
                              Container(height: 12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.redAccent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Dosa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                      Text("Crispy Paper",)
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Icon(Icons.favorite,color: Colors.pink,),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("\$12.37",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    ],
                                  ),
                                   SizedBox(height: 5,),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Icon(Icons.add,color: Colors.white,),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.redAccent),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(width: MediaQuery.of(context).size.width*0.1,),
                        Container(
                         // margin: EdgeInsets.only(right: 30),
                          height: 240,
                          width: 165,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: Column(
                            children: [
                              Container(height: 12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 130,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.redAccent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Dosa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                      Text("Crispy Paper",)
                                    ],
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Icon(Icons.favorite,color: Colors.pink,),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("\$12.37",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                    ],
                                  ),
                                   SizedBox(height: 5,),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Icon(Icons.add,color: Colors.white,),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.redAccent),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Most Popular",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Container(height: 55,width: 55,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Container(height: 55,width: 55,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Container(height: 55,width: 55,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Container(height: 55,width: 55,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Container(height: 55,width: 55,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: Container(height: 55,width: 55,
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pinkAccent),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
