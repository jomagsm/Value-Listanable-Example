// // import 'dart:math';

// // import 'package:flutter_lorem/flutter_lorem.dart';

// // List<String> category = [
// //   'Собрания и конференции',
// //   'Технические новости',
// //   'Другие новости',
// //   'Важное'
// // ];
// // List<String> imageUrl = [
// //   'https://cdn.pixabay.com/photo/2018/04/01/11/51/snow-3280728_960_720.jpg,',
// //   'https://randomwordgenerator.com/img/picture-generator/57e9d2404f56a514f1dc8460962e33791c3ad6e04e507440752f72d69f45c4_640.jpg',
// //   'https://randomwordgenerator.com/img/picture-generator/57e5d1464f53a414f1dc8460962e33791c3ad6e04e5074417c2f7cd3924fc7_640.jpg',
// //   'https://randomwordgenerator.com/img/picture-generator/57e4d441435baa14f1dc8460962e33791c3ad6e04e507749742c78d5914cc4_640.jpg',
// //   'https://randomwordgenerator.com/img/picture-generator/53e3d44a4950aa14f1dc8460962e33791c3ad6e04e507440722d72d5944ccd_640.jpg',
// //   'https://randomwordgenerator.com/img/picture-generator/5fe8d0424f5ab10ff3d8992cc12c30771037dbf85254794e732873d1924d_640.jpg'
// // ];

// // class Article {
// //   int id;
// //   String? title;
// //   String? headerTitle;
// //   String? text;
// //   DateTime? addDate;
// //   String? category;
// //   List<String>? images;
// //   Article(this.id, this.title, this.headerTitle, this.text, this.addDate,
// //       this.category, this.images);
// // }

// // class Articles {
// //   List<Article> articlesList = [];
// //   List<String> categoryList;
// //   Articles(this.articlesList, this.categoryList);
// // }

// // List<Article> createData() {
// //   Random rnd = new Random();
// //   List<Article> articles = [];
// //   for (var i = 0; i < 15; i++) {
// //     articles.add(Article(
// //         i,
// //         lorem(words: 2),
// //         lorem(words: 20),
// //         lorem(words: 60, paragraphs: 4),
// //         DateTime.parse("2014-01-13T00:00:00"),
// //         category[rnd.nextInt(category.length)], [
// //       imageUrl[rnd.nextInt(imageUrl.length)],
// //       imageUrl[rnd.nextInt(imageUrl.length)],
// //     ]));
// //   }
// //   return articles;
// // }

// // To parse this JSON data, do
// //
// //     final article = articleFromJson(jsonString);

// import 'dart:convert';

// List<Article> articleFromJson(String str) =>
//     List<Article>.from(json.decode(str).map((x) => Article.fromJson(x)));

// String articleToJson(List<Article> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Article {
//   Article({
//     required this.title,
//     required this.headerTitle,
//     required this.text,
//     required this.addDate,
//     this.editDate,
//     required this.lang,
//     this.outputImages,
//   });

//   String title;
//   String headerTitle;
//   String text;
//   DateTime addDate;
//   DateTime? editDate;
//   String lang;
//   List<OutputImage>? outputImages;

//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//         title: json["title"],
//         headerTitle: json["headerTitle"],
//         text: json["text"],
//         addDate: DateTime.parse(json["addDate"]),
//         editDate: DateTime.parse(json["editDate"]),
//         lang: json["lang"],
//         outputImages: List<OutputImage>.from(
//             json["outputImages"].map((x) => OutputImage.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "headerTitle": headerTitle,
//         "text": text,
//         "addDate": addDate.toIso8601String(),
//         "editDate": editDate.toIso8601String(),
//         "lang": lang,
//         "outputImages": List<dynamic>.from(outputImages.map((x) => x.toJson())),
//       };
// }

// class OutputImage {
//   OutputImage({
//     required this.url,
//     required this.orderNum,
//   });

//   String url;
//   int orderNum;

//   factory OutputImage.fromJson(Map<String, dynamic> json) => OutputImage(
//         url: json["url"],
//         orderNum: json["orderNum"],
//       );

//   Map<String, dynamic> toJson() => {
//         "url": url,
//         "orderNum": orderNum,
//       };
// }
