import 'package:dio/dio.dart';
import 'package:news_app/newsModel.dart';
import 'package:news_app/constant.dart';

final dio = Dio();

Future<List<Results>> getNews() async {
  NewsModel generalNews;
  Response response;
  // String xRapidApiKey="";
  response = await dio.get(
    'https://arabic-news-api.p.rapidapi.com/cnnarabic',
    // queryParameters: {'id': 12, 'name': 'dio'},
    options: Options(
      headers: {
        "x-rapidapi-key": "$xRapidApiKey ",
        "x-rapidapi-host": "arabic-news-api.p.rapidapi.com",
      },
    ),
  );
  generalNews = NewsModel.fromJson(response.data);
  return generalNews.results!;
}
