import 'dart:convert';

List<ImageList> imageListFromJson(String str) =>
    List<ImageList>.from(json.decode(str).map((x) => ImageList.fromJson(x)));

String imageListToJson(List<ImageList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageList {
  ImageList({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  String id;
  String author;
  int width;
  int height;
  String url;
  String downloadUrl;

  factory ImageList.fromJson(Map<String, dynamic> json) => ImageList(
        id: json["id"],
        author: json["author"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        downloadUrl: json["download_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "author": author,
        "width": width,
        "height": height,
        "url": url,
        "download_url": downloadUrl,
      };
}
