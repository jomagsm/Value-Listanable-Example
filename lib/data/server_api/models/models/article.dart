import 'output_images.dart';
import 'dart:convert';

List<Article> articleFromJson(String str) =>
    List<Article>.from(json.decode(str).map((x) => Article.fromJson(x)));

String articleToJson(List<Article> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Article {
  int id;
  List<Images>? images;
  String? title;
  String? headerTitle;
  String? text;
  DateTime? addDate;
  DateTime? editDate;
  bool? active;
  int? categories;
  int? languages;

  Article({
    required this.id,
    this.images,
    required this.title,
    this.headerTitle,
    this.text,
    this.addDate,
    this.editDate,
    this.active,
    this.categories,
    this.languages,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json['id'] as int,
        images: (json['images'] as List<dynamic>?)
            ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
            .toList(),
        title: json['title'] as String?,
        headerTitle: json['header_title'] as String?,
        text: json['text'] as String?,
        addDate:json['add_date'] == null
            ? null : DateTime.parse(json['add_date']),
        editDate: json['edit_date'] == null
            ? null
            : DateTime.parse(json['edit_date']),
        active: json['active'] as bool?,
        categories: json['categories'] as int?,
        languages: json['languages'] as int?,
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'images': images?.map((e) => e.toJson()).toList(),
        'title': title,
        'header_title': headerTitle,
        'text': text,
        'add_date': addDate,
        'edit_date': editDate,
        'active': active,
        'categories': categories,
        'languages': languages,
      };
}
