import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/article_model.dart';
import 'package:flutter_application_1/services/news_services.dart';
//import 'package:flutter_application_1/models/article_model.dart';
import 'package:flutter_application_1/widgets/news_tile.dart';



class NewsListView extends StatelessWidget {

  final List<ArticleModel> articles;

   const NewsListView({super.key, required this.articles});

@override
  Widget build(BuildContext context) {
    //استخدمناه عشان هو بيبني بالراحه الويدجت الظاهره ف الاسكرين بس اللي هي المهمه يعني عكس الlist view
    return SliverList(delegate: SliverChildBuilderDelegate(
                  childCount: articles.length,
                  (context, index) {
                    return  Padding(
                      padding:  EdgeInsets.only(bottom: 20),
                      child:  NewsTile(
                        articleModel: articles[index],
                      ),
                    );
                  },
                  ),
          );
  }
}
/*
ListView.builder(
      shrinkWrap: true,
       physics:const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context ,index){
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: NewsTile(),
        );
    }
    );
    */