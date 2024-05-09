import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/screens/category_screen.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return categoryScreen(
                category: category.category,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              category.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

/*
class CategoryCard extends StatelessWidget {
const CategoryCard({super.key, required this.category});
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: ()
        {
           Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return categoryScreen(
               // category: category.categoryName,
              );
            },
          ),
        );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            width: 160,
            height: 85,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(13),
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image)),
            ),
            child:  Center(child: Text(category.name,
            style: const TextStyle(color: Colors.green,
            fontSize: 25,
            fontWeight: FontWeight.bold
            ),
            )),
          ),
        ),
      ),
    );
  }
}*/
