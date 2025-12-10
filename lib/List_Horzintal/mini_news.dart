import 'package:flutter/material.dart';
import 'package:news_app/Services/getNews.dart';
import 'package:news_app/newsModel.dart';
import 'package:news_app/reusable.dart';
// import 'package:news_app/newsModel.dart';

class MiniNews_horizontal extends StatefulWidget {
  const MiniNews_horizontal({super.key});

  @override
  State<MiniNews_horizontal> createState() => _MiniNews_horizontalState();
}

class _MiniNews_horizontalState extends State<MiniNews_horizontal> {
  List<Results> news = [];
  @override
  void initState() {
    // print(news);
    getNews().then((onValue) {
      setState(() {
        news = onValue;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index) => MiniNews(TileData: news[index]),
      ),
    );
  }
}
