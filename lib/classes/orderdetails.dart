import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Random random = Random();
var min = 1000000;
var max = 10000000;
int range = 5 * 365;

class OrderClass {
  int orderID = min + random.nextInt(max - min);
  dynamic date = DateFormat('MMM d,h:mm a').format(DateTime.now().add(Duration(days: random.nextInt(range))));
  final double price;
  final String status;
  String userID = '588880500000000138';
  
  

  OrderClass({required this.price, required this.status});
}
