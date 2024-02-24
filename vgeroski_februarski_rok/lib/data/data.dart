import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/onboarding_content.dart';
import '../models/subcategory_model.dart';
import '../models/subcategory_product.dart';

class MockData {
  static List<OnBoardingContent> getOnBoardingContentData() {
    return [
      OnBoardingContent(
        message: 'Zdravo mali farmeru',
        imgName: 'lib/assets/images/onboard1.png',
      ),
      OnBoardingContent(
        message: 'Probaj nasu novu aplikaciju',
        imgName: 'lib/assets/images/onboard2.png',
      ),
      OnBoardingContent(
        message: 'Da li ti se dopada sve ono sto vidis?',
        imgName: 'lib/assets/images/onboard3.png',
      ),
    ];
  }

  static List<CategoryModel> getMockData() {
    return [
      CategoryModel(
        name: "Meso",
        imgName: "cat1",
        icon: "Meso",
        color: Colors.red[500]!,
        subCategories: [
          SubCategoryModel(
              name: "Prasetina",
              icon: "Prasetina",
              imgName: "cat1_1",
              color: Colors.red,
              price: 1250.0,
              products: [
                SubCategoryProduct(
                  name: 'Šunka',
                  imgName: 'cat1_1_p1',
                  isSelected: false,
                ),
                SubCategoryProduct(
                  name: 'Papci',
                  imgName: 'cat1_1_p2',
                  isSelected: false,
                ),
                SubCategoryProduct(
                  name: 'Slanina',
                  imgName: 'cat1_1_p3',
                  isSelected: false,
                ),
                SubCategoryProduct(
                  name: 'Krmenadla',
                  imgName: 'cat1_1_p4',
                  isSelected: false,
                ),
                SubCategoryProduct(
                  name: 'Rebra',
                  imgName: 'cat1_1_p5',
                  isSelected: false,
                ),
                SubCategoryProduct(
                  name: 'Panceta',
                  imgName: 'cat1_1_p6',
                  isSelected: false,
                ),
              ]),
          SubCategoryModel(
            name: "Piletina",
            icon: "Piletina",
            imgName: "cat1_2",
            color: Colors.red,
            price: 500.0,
            products: [
              SubCategoryProduct(
                name: 'Krilca',
                imgName: 'cat1_2_p1',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Belo meso',
                imgName: 'cat1_2_p2',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Batak',
                imgName: 'cat1_2_p3',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Nogice',
                imgName: 'cat1_2_p4',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'DŽigerica',
                imgName: 'cat1_2_p5',
                isSelected: false,
              ),
            ],
          ),
          SubCategoryModel(
            name: "Govedina",
            icon: "Govedina",
            imgName: "cat1_3",
            color: Colors.red,
            products: [
              SubCategoryProduct(
                name: 'Rebra',
                imgName: 'cat1_3_p1',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'T-bone',
                imgName: 'cat1_3_p2',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Ribeye',
                imgName: 'cat1_3_p3',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Rep',
                imgName: 'cat1_3_p4',
                isSelected: false,
              ),
            ],
          ),
          SubCategoryModel(
            name: "Curetina",
            icon: "Curetina",
            imgName: "cat1_4",
            color: Colors.red,
            products: [
              SubCategoryProduct(
                name: 'Belo meso',
                imgName: 'cat1_4_p1',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Batak',
                imgName: 'cat1_4_p2',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Krilca',
                imgName: 'cat1_4_p3',
                isSelected: false,
              ),
            ],
          ),
          SubCategoryModel(
            name: "Kozetina",
            icon: "Kozetina",
            imgName: "cat1_5",
            color: Colors.red,
            products: [
              SubCategoryProduct(
                name: 'Kotleti',
                imgName: 'cat1_5_p1',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Pikljevi',
                imgName: 'cat1_5_p2',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Pauflek',
                imgName: 'cat1_5_p3',
                isSelected: false,
              ),
            ],
          ),
          SubCategoryModel(
            name: "Zecetina",
            icon: "Zecetina",
            imgName: "cat1_6",
            color: Colors.red,
            products: [
              SubCategoryProduct(
                name: 'Grudi',
                imgName: 'cat1_6_p1',
                isSelected: false,
              ),
              SubCategoryProduct(
                name: 'Nogice',
                imgName: 'cat1_6_p2',
                isSelected: false,
              ),
            ],
          ),
        ],
      ),
      CategoryModel(
        name: "Voće",
        imgName: "cat2",
        icon: "Voće",
        color: Colors.blue[500]!,
        subCategories: [
          SubCategoryModel(
            name: "Kivi",
            icon: "Voće",
            imgName: "cat2_1",
            color: Colors.blue[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Banane",
            icon: "Voće",
            imgName: "cat2_2",
            color: Colors.blue[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Grejpfrut",
            icon: "Voće",
            imgName: "cat2_3",
            color: Colors.blue[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Pomorandža",
            icon: "Voće",
            imgName: "cat2_4",
            color: Colors.blue[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Avokado",
            icon: "Voće",
            imgName: "cat2_5",
            color: Colors.blue[500]!,
            products: [],
          ),
        ],
      ),
      CategoryModel(
        name: "Povrće",
        imgName: "cat3",
        icon: "Povrće",
        color: Colors.green[500]!,
        subCategories: [
          SubCategoryModel(
            name: "Paprika",
            icon: "Povrće",
            imgName: "cat3_1",
            color: Colors.green[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Šargarepa",
            icon: "Povrće",
            imgName: "cat3_2",
            color: Colors.green[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Špargla",
            icon: "Povrće",
            imgName: "cat3_3",
            color: Colors.green[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Luk",
            icon: "Povrće",
            imgName: "cat3_4",
            color: Colors.green[500]!,
            products: [],
          ),
        ],
      ),
      CategoryModel(
        name: "Semenje",
        imgName: "cat4",
        icon: "Semenje",
        color: Colors.yellow[500]!,
        subCategories: [
          SubCategoryModel(
            name: "Indijski orah",
            icon: "Semenje",
            imgName: "cat4_1",
            color: Colors.green[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Kikiriki",
            icon: "Semenje",
            imgName: "cat4_2",
            color: Colors.green[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Badem",
            icon: "Semenje",
            imgName: "cat4_3",
            color: Colors.green[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Pistaći",
            icon: "Semenje",
            imgName: "cat4_4",
            color: Colors.green[500]!,
            products: [],
          ),
        ],
      ),
      CategoryModel(
        name: "Orasati plodovi",
        imgName: "cat5",
        icon: "Orasati plodovi",
        color: Colors.grey[500]!,
        subCategories: [
          SubCategoryModel(
            name: "Indijski orah",
            icon: "Orasati plodovi",
            imgName: "cat5_1",
            color: Colors.grey[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Kikiriki",
            icon: "Orasati plodovi",
            imgName: "cat5_2",
            color: Colors.grey[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Badem",
            icon: "Orasati plodovi",
            imgName: "cat5_3",
            color: Colors.grey[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Pistaći",
            icon: "Orasati plodovi",
            imgName: "cat5_4",
            color: Colors.grey[500]!,
            products: [],
          ),
        ],
      ),
      CategoryModel(
        name: "Začini",
        imgName: "cat6",
        icon: "Začini",
        color: Colors.yellow[500]!,
        subCategories: [
          SubCategoryModel(
            name: "Pistaći",
            icon: "Začini",
            imgName: "cat6_1",
            color: Colors.yellow[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Pistaći",
            icon: "Začini",
            imgName: "cat6_2",
            color: Colors.yellow[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Pistaći",
            icon: "Začini",
            imgName: "cat6_3",
            color: Colors.yellow[500]!,
            products: [],
          ),
          SubCategoryModel(
            name: "Pistaći",
            icon: "Začini",
            imgName: "cat6_4",
            color: Colors.yellow[500]!,
            products: [],
          ),
        ],
      ),
    ];
  }

  static String deviceSuffix(BuildContext context) {
    String deviceSuffix = '';
    TargetPlatform targetPlatform = Theme.of(context).platform;

    switch (targetPlatform) {
      case TargetPlatform.android:
        deviceSuffix = "_android";
        break;
      case TargetPlatform.iOS:
        deviceSuffix = "_ios";
        break;
      default:
        deviceSuffix = "";
        break;
    }
    return deviceSuffix;
  }
}
