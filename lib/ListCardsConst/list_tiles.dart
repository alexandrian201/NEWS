import 'package:flutter/material.dart';
import 'package:news_app/res/assets_res.dart';
import '../reusable.dart';
import 'Category_Model.dart';

class ListCards extends StatelessWidget {
  const ListCards({super.key});
  final List<CategoryModel> categoryList = const [
    CategoryModel(titlea: "GeneralS", imagea: AssetsRes.GENERALS),
    CategoryModel(titlea: "Business", imagea: AssetsRes.BUSINESS),
    CategoryModel(titlea: "Entertainment", imagea: AssetsRes.ENTERTAINMENT),
    CategoryModel(titlea: "Health", imagea: AssetsRes.HEALTH),
    CategoryModel(titlea: "Science", imagea: AssetsRes.SCIENCE),
    CategoryModel(titlea: "Sports", imagea: AssetsRes.SPORTS),
    CategoryModel(titlea: "Technology", imagea: AssetsRes.TECHNOLOGY),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(31, 247, 124, 53),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return Cardi(alfa: categoryList[index]);
          },
        ),
      ),
    );
  }
}
