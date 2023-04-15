import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight_model.g.dart';

/// {@template weightModel}
/// A model containing data about a cat weight.
/// {@endtemplate}
@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class WeightModel extends Equatable {
  /// {@macro rocket}
  const WeightModel({
    required this.imperial,
    required this.metric,
  });

  /// Imperial size.
  final String imperial;

  /// Metric size.
  final String metric;

  @override
  List<Object?> get props => [imperial, metric];

  /// Converts a JSON [Map] into a [WeightModel] instance.
  static WeightModel fromJson(Map<String, dynamic> json) =>
      _$WeightModelFromJson(json);

  /// Converts this [WeightModel] instance into a JSON [Map].
  Map<String, dynamic> toJson() => _$WeightModelToJson(this);

  @override
  String toString() => 'WeightModel{imperial: $imperial, metric: $metric}';
}
