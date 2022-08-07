
import 'package:meta/meta.dart';
import 'dart:convert';

List<Product11> product1FromJson(String str) => List<Product11>.from(json.decode(str).map((x) => Product11.fromJson(x)));

String product1ToJson(List<Product11> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product11 {
  Product11({
    required this.id,
    required this.attributes,
  });

  int id;
  Product1Attributes attributes;

  factory Product11.fromJson(Map<String, dynamic> json) => Product11(
    id: json["id"],
    attributes: Product1Attributes.fromJson(json["attributes"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "attributes": attributes.toJson(),
  };
}

class Product1Attributes {
  Product1Attributes({
    required this.name1,
    required this.title1,
    required this.num1,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.image1,
  });

  String name1;
  dynamic title1;
  int num1;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  Image1 image1;

  factory Product1Attributes.fromJson(Map<String, dynamic> json) => Product1Attributes(
    name1: json["name1"],
    title1: json["title1"],
    num1: json["num1"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    publishedAt: DateTime.parse(json["publishedAt"]),
    image1: Image1.fromJson(json["image1"]),
  );

  Map<String, dynamic> toJson() => {
    "name1": name1,
    "title1": title1,
    "num1": num1,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "publishedAt": publishedAt.toIso8601String(),
    "image1": image1.toJson(),
  };
}

class Image1 {
  Image1({
    required this.data,
  });

  List<Datum> data;

  factory Image1.fromJson(Map<String, dynamic> json) => Image1(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.attributes,
  });

  int id;
  DatumAttributes attributes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    attributes: DatumAttributes.fromJson(json["attributes"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "attributes": attributes.toJson(),
  };
}

class DatumAttributes {
  DatumAttributes({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.createdAt,
    required this.updatedAt,
  });

  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  DateTime createdAt;
  DateTime updatedAt;

  factory DatumAttributes.fromJson(Map<String, dynamic> json) => DatumAttributes(
    name: json["name"],
    alternativeText: json["alternativeText"],
    caption: json["caption"],
    width: json["width"],
    height: json["height"],
    hash: json["hash"],
    ext: json["ext"],
    mime: json["mime"],
    size: json["size"].toDouble(),
    url: json["url"],
    previewUrl: json["previewUrl"],
    provider: json["provider"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "alternativeText": alternativeText,
    "caption": caption,
    "width": width,
    "height": height,
    "hash": hash,
    "ext": ext,
    "mime": mime,
    "size": size,
    "url": url,
    "previewUrl": previewUrl,
    "provider": provider,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
  };
}

