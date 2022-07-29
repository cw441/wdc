import 'dart:convert';

List<Product1> product1FromJson(String str) => List<Product1>.from(json.decode(str).map((x) => Product1.fromJson(x)));

String product1ToJson(List<Product1> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product1 {
  Product1({
    required this.id,
    required this.attributes,
  });

  int id;
  Product1Attributes attributes;

  factory Product1.fromJson(Map<String, dynamic> json) => Product1(
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
    required this.image1,
  });

  String name1;
  String title1;
  int num1;
  Image1 image1;

  factory Product1Attributes.fromJson(Map<String, dynamic> json) => Product1Attributes(
    name1: json["name1"],
    title1: json["title1"],
    num1: json["num1"],
    image1: Image1.fromJson(json["image1"]),
  );

  Map<String, dynamic> toJson() => {
    "name1": name1,
    "title1": title1,
    "num1": num1,
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
    required this.url,
  });

  String url;

  factory DatumAttributes.fromJson(Map<String, dynamic> json) => DatumAttributes(
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
  };
}
