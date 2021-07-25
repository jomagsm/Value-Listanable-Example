import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';

List<String> category = [
  'Собрания и конференции',
  'Технические новости',
  'Другие новости',
  'Важное'
];
List<String> imageUrl = [
  'https://cdn.pixabay.com/photo/2018/04/01/11/51/snow-3280728_960_720.jpg,',
  'https://randomwordgenerator.com/img/picture-generator/57e9d2404f56a514f1dc8460962e33791c3ad6e04e507440752f72d69f45c4_640.jpg',
  'https://randomwordgenerator.com/img/picture-generator/57e5d1464f53a414f1dc8460962e33791c3ad6e04e5074417c2f7cd3924fc7_640.jpg',
  'https://randomwordgenerator.com/img/picture-generator/57e4d441435baa14f1dc8460962e33791c3ad6e04e507749742c78d5914cc4_640.jpg',
  'https://randomwordgenerator.com/img/picture-generator/53e3d44a4950aa14f1dc8460962e33791c3ad6e04e507440722d72d5944ccd_640.jpg',
  'https://randomwordgenerator.com/img/picture-generator/5fe8d0424f5ab10ff3d8992cc12c30771037dbf85254794e732873d1924d_640.jpg'
];

class Article {
  int id;
  String? title;
  String? about;
  DateTime? date;
  String? category;
  List<String>? images;
  Article(
      this.id, this.title, this.about, this.date, this.category, this.images);
}

class Articles {
  List<Article> articlesList = [];
  List<String> categoryList;
  Articles(this.articlesList, this.categoryList);
}

Articles createData() {
  Random rnd = new Random();
  Articles articles = Articles([], category);
  for (var i = 0; i < 15; i++) {
    articles.articlesList.add(Article(
        i,
        lorem(words: 2),
        lorem(words: 60, paragraphs: 4),
        DateTime.parse("2014-01-13T00:00:00"),
        category[rnd.nextInt(category.length)], [
      imageUrl[rnd.nextInt(imageUrl.length)],
      imageUrl[rnd.nextInt(imageUrl.length)],
    ]));
  }
  return articles;
}
