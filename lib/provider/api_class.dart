import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ui/model/jsontodartmodel.dart';


class api_provider extends ChangeNotifier{
  List<dynamic> mainList = [];

  String shoplike = "https://fakestoreapi.com/products";

  Future<List> apifactory()async{
  var string = await http.get(Uri.parse(shoplike));
  var maplist = jsonDecode(string.body);
  return mainList = maplist.map((e) => Jsontodartmodel.fromJson(e)).toList();
 }
}