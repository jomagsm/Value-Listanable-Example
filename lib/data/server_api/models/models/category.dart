import 'dart:convert';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  int id;
  String? name;
  int? languages;
  bool? active;

  Category({required this.id, this.name, this.languages, this.active});

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'] as int,
        name: json['name'] as String?,
        languages: json['languages'] as int?,
        active: json['active'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'lang': languages,
        'active': active,
      };
}

List<Category> getCategoryByLang(String locale, List<Category> categoryList){
  List<Category> sortList= [];
  int lang = 0;
  if(locale == 'kg'){
    lang = 1;
  }
  else{
   lang = 2;
  }
  for(var i in categoryList){
    if (i.languages == lang){
      sortList.add(i);
    }
  }
  return sortList;
}