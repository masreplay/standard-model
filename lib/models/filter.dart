import 'package:json_annotation/json_annotation.dart';

part 'filter.g.dart';

@JsonSerializable()
class Filter {
  final String? test;
  final String? best;

  const Filter({
    this.test,
    this.best,
  });

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);

  Map<String, dynamic> toJson() => _$FilterToJson(this);
}
