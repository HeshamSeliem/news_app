import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/article_model.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/services/news_services.dart';
import 'package:flutter_application_1/widgets/error_message.dart';
import 'package:flutter_application_1/widgets/loading_indicator.dart';
import 'package:flutter_application_1/widgets/news_list_views.dart';


class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder ({super.key, required this.category});
  final String category;
 @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  /*
  *********-----future builder التعليق ده كله كان قبل استخدام ----*******
  List<ArticleModel> article =[];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
   getGeneralNews();
   
  }
Future<void> getGeneralNews() async {
    article = await NewsService(Dio()).getNews();
   
     isLoading = false;
      setState(() {});
  }
  */
  var future;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews(
      category: widget.category
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future : future,
     builder: (context , snapshot)
     {

      if (snapshot.hasData) {
  return  NewsListView(
   articles: snapshot.data !,    // request بتاخد الداتا اللي في ال 
       );
}
  else if(snapshot.hasError)
  {
    return const SliverToBoxAdapter(
       child: ErrorMessage());
  }
  else
  {
    return const SliverToBoxAdapter (
     child: CircularIndicator()
      );
  }
   }
    );


    // return isLoading ? SliverToBoxAdapter (child: Center(child: Container(
    //   width: 400,
    //   height: 400,
    //   child: Center(
    //     child: CircularProgressIndicator()
    //     )))
    //   ) :article.isNotEmpty? NewsListView(
    //   articles: article,
    // ): SliverToBoxAdapter(
    //   child: Text('opps an error has been occured ,please try later'));
  }
}



