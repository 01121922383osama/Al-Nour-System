// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryEntity _$CategoryFromJson(Map<String, dynamic> json) => CategoryEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      categoryItems: (json['categoryItems'] as List<dynamic>)
          .map((e) => CategoryItemsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryToJson(CategoryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryItems': instance.categoryItems,
    };
