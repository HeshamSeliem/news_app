
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/models/article_model.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/services/news_services.dart';
//import 'package:flutter_application_1/widgets/category_card.dart';
import 'package:flutter_application_1/widgets/category_listView.dart';
import 'package:flutter_application_1/widgets/news_list_views.dart';
import 'package:flutter_application_1/widgets/news_listview_builder.dart';
import 'package:flutter_application_1/widgets/news_tile.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text('Clould',
            style: TextStyle(color: Colors.orange),),
          ],
        ),
        centerTitle: true,
      ),
      body: 
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),//عشان نعمل السحبه للصفحه
              slivers: [
                SliverToBoxAdapter(
                  child: 
                  SizedBox(
                   height: 120,
                   width: 200,
                    child: CategoryListView()),
              ),
                 SliverToBoxAdapter(
                   child: SizedBox(
                       height: 20,
                     ),
                 ),
                   NewsListViewBuilder(
                    category: 'general',
                   ),
                 //كده التطبيق بتاعي شغال ابطا عشان هو مضطر يبني العناصر كلها حتي اللي مش معروضه عشان كده نستحدم sliverList
                 /*SliverToBoxAdapter(
                  child: NewsListView(),
                 )*/
              ],
            )
            // Column(
            //   children: [
            //      SizedBox(
            //       height: 120,
            //       child: CategoryListView()),
            //       SizedBox(
            //         height: 20,
            //       ),
            //       Expanded(child: NewsListView()),
            
            //   ],
            // ),
          ),
         //const NewsListView(),
        
      );
      //
      
        
       
  }
 
}




