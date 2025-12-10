import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/ggg/mini_articles.dart';
import 'ListCardsConst/list_tiles.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "News",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff6aff0e),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  fontSize: 40,
                  color: Constants.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: ListCards()),
            MiniNews_Articles(),
          ],
        ),
      ),
    );
  }
}
