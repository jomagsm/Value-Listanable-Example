import 'output_images.dart';
import 'dart:convert';

List<Article> articleFromJson(String str) =>
    List<Article>.from(json.decode(str).map((x) => Article.fromJson(x)));

String articleToJson(List<Article> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Article {
  String title;
  String? headerTitle;
  String? text;
  String? addDate;
  String? editDate;
  String? lang;
  List<OutputImages>? outputImages;

  Article({
    required this.title,
    this.headerTitle,
    this.text,
    this.addDate,
    this.editDate,
    this.lang,
    this.outputImages,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        title: json['title'] as String,
        headerTitle: json['headerTitle'] as String?,
        text: json['text'] as String?,
        addDate: json['addDate'] as String?,
        editDate: json['editDate'] as String?,
        lang: json['lang'] as String?,
        outputImages: (json['outputImages'] as List<dynamic>?)
            ?.map((e) => OutputImages.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'headerTitle': headerTitle,
        'text': text,
        'addDate': addDate,
        'editDate': editDate,
        'lang': lang,
        'outputImages': outputImages?.map((e) => e.toJson()).toList(),
      };
}
