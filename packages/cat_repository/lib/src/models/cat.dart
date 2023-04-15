import 'package:equatable/equatable.dart';

/// {@template user}
/// An object which represents a specific cat.
/// {@endtemplate}
class Cat extends Equatable {
  /// {@macro rocket}
  const Cat({
    required this.id,
    required this.name,
    required this.origin,
    required this.description,
    required this.lifeSpan,
    required this.adaptability,
    required this.intelligence,
    required this.referenceImageId,
  });

  final String id;
  final String name;
  final String origin;
  final String description;
  final String lifeSpan;
  final int adaptability;
  final int intelligence;
  final String referenceImageId;

  @override
  List<Object?> get props => [id, name, origin, description, lifeSpan, adaptability,
    intelligence, referenceImageId];
}
