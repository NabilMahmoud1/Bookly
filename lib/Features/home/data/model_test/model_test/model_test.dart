import 'item.dart';

class ModelTest {
  String? kind;
  int? totalItems;
  List<Item>? items;

  ModelTest({this.kind, this.totalItems, this.items});

  factory ModelTest.fromJson(Map<String, dynamic> json) => ModelTest(
    kind: json['kind'] as String?,
    totalItems: json['totalItems'] as int?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'totalItems': totalItems,
    'items': items?.map((e) => e.toJson()).toList(),
  };
}
