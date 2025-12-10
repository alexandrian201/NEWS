import 'package:flutter/material.dart';
// import 'package:news_app/ggg/articlesModel.dart';
import 'package:news_app/newsModel.dart';

import 'constant.dart';

class Cardi extends StatelessWidget {
  const Cardi({super.key, required this.alfa});
  final alfa;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 400,
      width: 280,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(alfa.imagea),
        ),
        // color: Color(0xff6de2ff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          alfa.titlea,
          style: TextStyle(
            color: Constants.secondaryColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MiniNews extends StatelessWidget {
  const MiniNews({super.key, required this.TileData});
  final Results TileData;
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
              TileData.image ??
                  "https://gratisography.com/wp-content/uploads/2023/09/gratisography-parrot-pirate-free-stock-photo-1170x780.jpg",
              // TileData.image!,
            ),
          ),
          Text(
            TileData.headline!,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Center(
            child: Text(
              TileData.underHeadline!,
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
