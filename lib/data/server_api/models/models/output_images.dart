class Images {
  int? id;
  String? url;
  int? orderNum;
  bool? active;
  int? news;

  Images({this.id, this.url, this.orderNum, this.active, this.news});

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        id: json['id'] as int?,
        url: json['url'] as String?,
        orderNum: json['order_num'] as int?,
        active: json['active'] as bool?,
        news: json['news'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
        'order_num': orderNum,
        'active': active,
        'news': news,
      };
}
