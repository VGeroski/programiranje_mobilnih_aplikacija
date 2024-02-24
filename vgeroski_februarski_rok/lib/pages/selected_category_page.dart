import 'package:flutter/material.dart';
import 'product_page.dart';
import '../models/category.dart';
import '../models/subcategory_model.dart';

class SelectedCategoryPage extends StatelessWidget {
  final CategoryModel categoryModel;

  const SelectedCategoryPage({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: categoryModel.color, shape: BoxShape.circle),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    categoryModel.name!,
                    style: TextStyle(fontSize: 30, color: categoryModel.color),
                  ),
                ],
              ),
            ),
            Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: categoryModel.subCategories!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductsPage(
                                      subCategoryModel: categoryModel.subCategories![index] as SubCategoryModel)));
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                'lib/images/${categoryModel.subCategories![index].imgName!}.png',
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              categoryModel.subCategories![index].name!,
                              style: TextStyle(fontSize: 20, color: categoryModel.color),
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
