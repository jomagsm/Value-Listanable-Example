class OutputImages {
  String? url;
  int? orderNum;

  OutputImages({this.url, this.orderNum});

  factory OutputImages.fromJson(Map<String, dynamic> json) => OutputImages(
        url: json['url'] as String?,
        orderNum: json['orderNum'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'orderNum': orderNum,
      };
}
