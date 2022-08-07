
import 'package:meta/meta.dart';
import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required this.attributes,
  });

  int id;
  ProductAttributes attributes;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    attributes: ProductAttributes.fromJson(json["attributes"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "attributes": attributes.toJson(),
  };
}

class ProductAttributes {
  ProductAttributes({
    required this.name,
    required this.title,
    required this.num,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.image,
  });

  String name;
  dynamic title;
  int num;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  Image image;

  factory ProductAttributes.fromJson(Map<String, dynamic> json) => ProductAttributes(
    name: json["name"],
    title: json["title"],
    num: json["num"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    publishedAt: DateTime.parse(json["publishedAt"]),
    image: Image.fromJson(json["image"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "title": title,
    "num": num,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "publishedAt": publishedAt.toIso8601String(),
    "image": image.toJson(),
  };
}

class Image {
  Image({
    required this.data,
  });

  List<Datum> data;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
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

