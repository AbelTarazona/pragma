import 'package:json_annotation/json_annotation.dart';

part 'weight_model.g.dart';

/// {@template weightModel}
/// A model containing data about a cat weight.
/// {@endtemplate}
@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class WeightModel {
  /// {@macro rocket}
  WeightModel({
    required this.imperial,
    required this.metric,
  });

  /// Imperial size.
  String imperial;

  /// Metric size.
  String metric;
}