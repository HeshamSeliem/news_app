// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/models/article_model.dart';
// import 'package:flutter_application_1/services/news_services.dart';
// //import 'package:flutter_application_1/models/article_model.dart';
// import 'package:flutter_application_1/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//    const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//  //عرفنا الليست هنا عشان ال scop
// List<ArticleModel> articles =[];

// bool isLoading = true;
//   @override
//   void initState(){
//     super.initState();

//      getGeneralNews();
     
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

  
//   @override
//   Widget build(BuildContext context) {
//     //استخدمناه عشان هو بيبني بالراحه الويدجت الظاهره ف الاسكرين بس اللي هي المهمه يعني عكس الlist view
//     return isLoading ?  SliverToBoxAdapter(
//       child: Center(
//         child: Container(
//           width: 400,
//           height: 400,
//           child: const Center(
//             child: CircularProgressIndicator(color: Color.fromARGB(255, 100, 106, 112),))))) : 
//         SliverList(delegate: SliverChildBuilderDelegate(
//                   childCount: articles.length,
//                   (context, index) {
//                     return  Padding(
//                       padding:  EdgeInsets.only(bottom: 20),
//                       child:  NewsTile(
//                         articleModel: articles[index],
//                       ),
//                     );
//                   },
//                   ),
//           );
//   }
// }