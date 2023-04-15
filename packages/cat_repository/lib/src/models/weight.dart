import 'package:equatable/equatable.dart';

/// {@template user}
/// An object which represents a cat's weight.
/// {@endtemplate}
class Weight extends Equatable {
  /// {@macro user}
  const Weight({
    required this.imperial,
    required this.metric,
  });

  /// Imperial size.
  final String imperial;

  /// Metric size.
  final String metric;

  @override
  List<Object?> get props => [imperial, metric];
}
