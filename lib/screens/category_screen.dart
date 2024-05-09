import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/widgets/news_listview_builder.dart';

class categoryScreen extends StatelessWidget {
  const categoryScreen({super.key, required this.category, });
  final String category;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        title: Text("$category News",style: const TextStyle(
          color: Color.fromARGB(255, 88, 51, 51),
          fontWeight: FontWeight.w400
        ),),
        centerTitle: true,
      ),
     body: CustomScrollView(
      slivers: [
        NewsListViewBuilder(
          category: category,
        ),
      ],
     )
      
      );
    
  }
}