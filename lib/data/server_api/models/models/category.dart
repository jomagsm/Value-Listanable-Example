import 'dart:convert';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  int id;
  String? name;
  int? languages;
  bool active = false;

  Category({required this.id, this.name, this.languages});

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'] as int,
        name: json['name'] as String?,
        languages: json['languages'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'lang': languages,
        'active': active,
      };
}

List<Category> getCategoryByLang(String locale, List<Category> categoryList) {
  List<Category> sortList = [];
  int lang = 0;
  if (locale == 'kg') {
    lang = 1;
    Category allCategory = Category(
      id: 99,
      name: 'Баары',
      languages: 2,
    );
    allCategory.active = true;

    sortList.add(allCategory);
  } else {
    lang = 2;
    Category allCategory = Category(
      id: 99,
      name: 'Все',
      languages: 1,
    );
    allCategory.active = true;
    sortList.add(allCategory);
  }
  for (var i in categoryList) {
    if (i.languages == lang) {
      sortList.add(i);
    }
  }
  return sortList;
}


allCategorySelect(List<Category> categoryList){
  for(var category in categoryList){
    if (category.id !=99){
      category.active = false;
    }
  }
  
}