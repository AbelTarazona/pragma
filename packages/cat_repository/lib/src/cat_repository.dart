import 'package:cat_api/cat_api.dart';
import 'package:cat_repository/src/models/cat.dart';
import 'package:cat_repository/src/models/weight.dart';

/// Thrown when an error occurs while looking up cats.
class CatsException implements Exception {}

/// {@template cat_repository}
/// API about cats
/// {@endtemplate}
class CatRepository {
  /// {@macro cat_repository}
  CatRepository({CatApi? catApi}) : _catApi = catApi ?? CatApi();

  final CatApi _catApi;

  /// Returns a list of all cats.
  ///
  /// Throws a [CatsException] if an error occurs.
  Future<List<Cat>> fetchAllCats() async {
    try {
      final cats = await _catApi.fetchAllCats();
      return cats.map((e) => e.toCat()).toList();
    } on Exception {
      throw CatsException();
    }
  }
}

extension on CatModel {
  Cat toCat() {
    return Cat(weight: weight.toWeight(),
        id: id,
        name: name,
        cfaUrl: cfaUrl,
        vetstreetUrl: vetstreetUrl,
        vcahospitalsUrl: vcahospitalsUrl,
        temperament: temperament,
        origin: origin,
        countryCodes: countryCodes,
        countryCode: countryCode,
        description: description,
        lifeSpan: lifeSpan,
        indoor: indoor,
        lap: lap,
        altNames: altNames,
        adaptability: adaptability,
        affectionLevel: affectionLevel,
        childFriendly: childFriendly,
        dogFriendly: dogFriendly,
        energyLevel: energyLevel,
        grooming: grooming,
        healthIssues: healthIssues,
        intelligence: intelligence,
        sheddingLevel: sheddingLevel,
        socialNeeds: socialNeeds,
        strangerFriendly: strangerFriendly,
        vocalisation: vocalisation,
        experimental: experimental,
        hairless: hairless,
        natural: natural,
        rare: rare,
        rex: rex,
        suppressedTail: suppressedTail,
        shortLegs: shortLegs,
        wikipediaUrl: wikipediaUrl,
        hypoallergenic: hypoallergenic,
        referenceImageId: referenceImageId,);
  }
}

extension on WeightModel {
  Weight toWeight() {
    return Weight(imperial: imperial, metric: metric);
  }
}
