import 'package:flutter/material.dart';
import 'package:news_app/newsArticles/articlesModel.dart';

class Fileg extends StatelessWidget {
  const Fileg({super.key, required this.alfa});
  final Articles alfa;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
            child: Image.network(
              width: double.infinity,
              height: 350,
              fit: BoxFit.fill,
              alfa.urlToImage ??
                  "https://gratisography.com/wp-content/uploads/2023/09/gratisography-parrot-pirate-free-stock-photo-1170x780.jpg",
            ),
          ),
          Text(
            alfa.title ?? "مفيش عنوان",
            textDirection: TextDirection.rtl,
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Center(
            child: Text(
              alfa.description ?? "مفيش وصف",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
