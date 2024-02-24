import 'package:flutter/material.dart';

class CategoryModel {
  // naziv, ikonicu, boju, spisak proizvoda iz kategorije
  final String? name;
  final String? icon;
  final String? imgName;
  final Color? color;
  final List<CategoryModel>? subCategories;

  CategoryModel({
    this.name,
    this.icon,
    this.imgName,
    this.color,
    this.subCategories
  });
}
