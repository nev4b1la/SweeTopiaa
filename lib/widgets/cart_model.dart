import 'package:flutter/material.dart';

class cartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Cheese Cake", "7.00", "4.9", "lib/images/cheesecake.png"],
    ["Garlic Bread", "5.00", "4.8", "lib/images/garlicBread.png"],
    ["Gelato", "7.00", "4.7", "lib/images/gelato.png"],
    ["Manggo Puding", "5.00", "4.7", "lib/images/pudding.png"],
    ["Apple Pie", "8.75", "4.6", "lib/images/pie.png"],
    ["Popsicle", "3.00", "4.6", "lib/images/popsicle.png"],
    ["Candy Cane", "9.00", "4.5", "lib/images/candycane.png"],
    ["Macaron", "5.75", "4.5", "lib/images/macarons.png"],
    ["Choco Donut", "4.50", "4.2", "lib/images/donut.png"],
    ["Cotton Candy", "6.00", "4.0", "lib/images/cottoncandy1.png"],
  ];
  get shopItems => _shopItems;
}
