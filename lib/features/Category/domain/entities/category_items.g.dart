// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryItemsEntity _$CategoryItemsFromJson(Map<String, dynamic> json) =>
    CategoryItemsEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      count: json['count'] as num,
      priceSell: json['priceSell'] as num,
      priceBuy: json['priceBuy'] as num,
      barcode: json['barcode'] as String,
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$CategoryItemsToJson(CategoryItemsEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
      'priceSell': instance.priceSell,
      'priceBuy': instance.priceBuy,
      'barcode': instance.barcode,
      'description': instance.description,
    };
