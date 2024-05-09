import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/article_model.dart';

class NewsService {

final Dio dio;
NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
  Response response = await dio.get(
    'https://newsapi.org/v2/top-headlines?country=us&apiKey=93e0fe7b7a35497c86be4eb9608dbddb&category=$category');
  Map<String,dynamic> jsonData = response.data; 
   //كده خزنت الداتا اللي جايه في صوره map
  List<dynamic> articles = jsonData['articles'];
  
  List <ArticleModel> articleList =[];
  
  for (var article in articles) {
  
    ArticleModel articleModel =ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      subTitle: article['description'],
      url: article['url']
      );
      articleList.add(articleModel);
  }
  return articleList;
} catch (e) {
  return [];
}
  }
  }