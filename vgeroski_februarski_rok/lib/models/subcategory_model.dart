import 'dart:ui';

import 'package:vgeroski_februarski_rok/models/category.dart';
import 'package:vgeroski_februarski_rok/models/subcategory_product.dart';

class SubCategoryModel extends CategoryModel {
  final String? name;
  final String? icon;
  final String? imgName;
  final Color? color;
  final double price;
  final double amount;
  List<SubCategoryProduct>? products;

  SubCategoryModel(
      {this.name,
      this.icon,
      this.imgName,
      this.color,
      this.price = 0.0,
      this.amount = 0.0,
      this.products})
      : super(name: name, icon: icon, imgName: imgName, color: color);
}
