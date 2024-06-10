import 'package:al_noor/features/Category/domain/entities/category_items.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class CategoryEntity {
  final String id;
  final String name;
  final List<CategoryItemsEntity> categoryItems;

  CategoryEntity({
    required this.id,
    required this.name,
    required this.categoryItems,
  });

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
