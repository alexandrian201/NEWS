import 'package:dio/dio.dart';
import 'package:news_app/ggg/articlesModel.dart';

final dio = Dio();

Future<List<Articles>> getArticles() async {
  articlesModel generalArticles;
  Response response;
  response = await dio.get(
    'https://newsapi.org/v2/everything',
    queryParameters: {
      'q': "everything",
      'apiKey': '3ad53dcafe474b9a89f1b38d910bbe54',
    },
    // options: Options(
    //   headers: {
    //     "x-rapidapi-key": "e1fdaa8a48msh4bba92433dac790p1bc959jsn4cf37174690f",
    //     "x-rapidapi-host": "arabic-news-api.p.rapidapi.com",
    //   },
    // ),
  );
  generalArticles = articlesModel.fromJson(response.data);
  return generalArticles.articles!;
}
