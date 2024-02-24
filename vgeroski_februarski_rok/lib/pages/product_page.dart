import 'package:flutter/material.dart';
import '../models/subcategory_model.dart';

class ProductsPage extends StatelessWidget {
  final SubCategoryModel subCategoryModel;

  const ProductsPage({super.key, required this.subCategoryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // naslovna slika
            Image.asset(
              'lib/images/${subCategoryModel.imgName!}.png',
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),

            // naslov
            const Text(
              'Lista Proizvoda',
              style: TextStyle(fontSize: 24),
            ),

            // prikaz liste proizvoda (horizontalno)
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: subCategoryModel.products!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                            'lib/images/${subCategoryModel.products![index].imgName}.png'),
                      ),
                      Text(
                        subCategoryModel.products![index].name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(subCategoryModel.price.toString(),
                          style: const TextStyle(fontSize: 15))
                    ],
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
