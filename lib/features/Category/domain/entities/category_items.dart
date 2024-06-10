import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_items.g.dart';

@JsonSerializable()
class CategoryItemsEntity {
  final String id;
  final String name;
  final num? count;
  final num? priceSell;
  final num? priceBuy;
  final String? barcode;
  final String? description;

  CategoryItemsEntity({
    required this.id,
    required this.name,
    this.count = 0,
    this.priceSell = 0.0,
    this.priceBuy = 0.0,
    this.barcode,
    this.description = '',
  });

  factory CategoryItemsEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemsFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryItemsToJson(this);
}
