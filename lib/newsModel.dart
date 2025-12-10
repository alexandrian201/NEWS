class NewsModel {
  List<Results>? results;

  NewsModel({this.results});

  NewsModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? headline;
  String? underHeadline;
  String? content;
  String? date;
  String? image;
  String? url;

  Results({
    this.headline,
    this.underHeadline,
    this.content,
    this.date,
    this.image,
    this.url,
  });

  Results.fromJson(Map<String, dynamic> json) {
    headline = json['headline'];
    underHeadline = json['underHeadline'];
    content = json['content'];
    date = json['date'];
    image = json['image'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['headline'] = this.headline;
    data['underHeadline'] = this.underHeadline;
    data['content'] = this.content;
    data['date'] = this.date;
    data['image'] = this.image;
    data['url'] = this.url;
    return data;
  }
}
