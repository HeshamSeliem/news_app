//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/screens/category_screen.dart';
import 'package:flutter_application_1/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> Categories = const
  [
    CategoryModel(image: 'assets/tec.jpg', name: 'technology',category: 'technology'),
    CategoryModel(image: 'assets/health.webp', name: 'health',category: 'health'),
    CategoryModel(image: 'assets/science.jpg', name: 'Science',category: 'science'),
    CategoryModel(image: 'assets/s.jpeg', name: 'Sports',category: 'sports'),
    CategoryModel(image: 'assets/business.jpg', name: 'business',category: 'business'),
    CategoryModel(image: 'assets/Entertainment.webp', name: 'entertainment',category: 'entertainment'),
   
    // CategoryModel(image: 'assets/technology.jpeg', name: 'Science'),
    // CategoryModel(image: 'assets/entertaiment.avif', name: 'technology'),
    // CategoryModel(image: 'assets/s.jpeg', name: 'Sports'),
    // CategoryModel(image: 'assets/technology.jpeg', name: 'Science'),
    // CategoryModel(image: 'assets/s.jpeg', name: 'Sports'),
    // CategoryModel(image: 'assets/entertaiment.avif', name: 'technology'),
    // CategoryModel(image: 'assets/s.jpeg', name: 'Sports'),
    // CategoryModel(image: 'assets/technology.jpeg', name: 'Science'),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
            height: 120,
            child: ListView.builder
            (
               //shrinkWrap: true,
               scrollDirection: Axis.horizontal,
              itemCount: Categories.length,
              itemBuilder: (context , index)
            {
              return CategoryCard(
               category: Categories[index]
              );
            }
            ),
          ),
    );
  }
  Widget buildCardItem({required CategoryModel Category}) =>
        Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(Category.image)),
                        ),
                        child: Center(child: Text(Category.name,
                        style: const TextStyle(color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                        ),
                        )),
                ),
              );

              
}
