import 'package:flutter/material.dart';
import 'package:news_app/Services/getNews.dart';
import 'package:news_app/newsArticles/articlesModel.dart';
import 'package:news_app/newsArticles/file.dart';
import 'package:news_app/newsArticles/getArticles.dart';
import 'package:news_app/newsModel.dart';
import 'package:news_app/reusable.dart';

class MiniNews_Articles extends StatefulWidget {
  const MiniNews_Articles({super.key});

  @override
  State<MiniNews_Articles> createState() => _MiniNews_ArticlesState();
}

class _MiniNews_ArticlesState extends State<MiniNews_Articles> {
  List<Results> news = [];
  List<Articles> articles = [];
  @override
  void initState() {
    getNews().then((onValue) {
      setState(() {
        news = onValue;
      });
    });
    getArticles().then((onData) {
      setState(() {
        articles = onData.cast<Articles>();
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (news.isEmpty || articles.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          // ضمان عدم تجاوز طول اللستتين
          if (index >= news.length || index >= articles.length) {
            return const SizedBox();
          }

          // الترتيب: زوجي = Fileg ، فردي = MiniNews
          if (index % 2 == 0) {
            return Fileg(alfa: articles[index]);
          } else {
            return MiniNews(TileData: news[index]);
          }
        },
        childCount: (news.length < articles.length)
            ? news.length
            : articles.length,
      ),
    );
  }
}
