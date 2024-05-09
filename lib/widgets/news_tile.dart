import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/article_model.dart';
import 'package:flutter_application_1/screens/web_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return (
                WebViewApp(
                  url: articleModel.url,
                )
              );
            },
          ),
        );
      },
      child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
               articleModel.image ??'https://th.bing.com/th/id/OIP.O21Q6ByDjlqd7OoD0LWpCwHaE8?rs=1&pid=ImgDetMain',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
          ),
         const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          ),
         const SizedBox(
          height: 5,
         ), 
           Text(
            articleModel.subTitle ?? '',//يعني لو القيمه null حط مكانه مكان فاضي 
            maxLines: 2,
            style: TextStyle(color: const Color.fromARGB(255, 27, 23, 23), fontSize: 14),
          )
      ],
      ),
    );

    
  }
}