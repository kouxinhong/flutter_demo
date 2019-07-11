class BannerModelList {
  String desc;
  int id;
  String imagePath;
  int isVisible;
  int order;
  String title;
  int type;
  String url;

  BannerModelList(
      {this.desc,
      this.id,
      this.imagePath,
      this.isVisible,
      this.order,
      this.title,
      this.type,
      this.url});

  factory BannerModelList.fromJson(Map<String, dynamic> json) {
    return BannerModelList(
        desc: json['desc'] as String,
        id: json['id'] as int,
        imagePath: json['imagePath'] as String,
        isVisible: json['isVisible'] as int,
        order: json['order'] as int,
        title: json['title'] as String,
        type: json['type'] as int,
        url: json['url'] as String);
  }
}
