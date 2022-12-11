import 'package:json_annotation/json_annotation.dart';

part 'GetProductRes.g.dart';

@JsonSerializable()
class GetProductRes {
  String message;
  GetProductResData data;

  GetProductRes(this.message, this.data);

  factory GetProductRes.fromJson(Map<String, dynamic> json) => _$GetProductResFromJson(json);
  Map<String, dynamic> toJson() => _$GetProductResToJson(this);
}

@JsonSerializable()
class GetProductResData{
  List<Product> products;
  GetProductResData(this.products);

  factory GetProductResData.fromJson(Map<String, dynamic> json) => _$GetProductResDataFromJson(json);
  Map<String, dynamic> toJson() => _$GetProductResDataToJson(this);
}

@JsonSerializable()
class Product{
  String id, product_name, merchant_id, product_category, description, location, city, latitude, longitude, country, currency,
      prize, vocher_code, status;
  List<String> product_images;

  Product(
      this.id,
      this.product_name,
      this.merchant_id,
      this.product_category,
      this.description,
      this.location,
      this.city,
      this.latitude,
      this.longitude,
      this.country,
      this.currency,
      this.prize,
      this.product_images,
      this.vocher_code,
      this.status);

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}