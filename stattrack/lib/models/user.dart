import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String name;
  final num weight;
  final num height;
  final Timestamp birthday;
  final num dailyCalories;
  final num dailyProteins;
  final num dailyFat;

  User({
    required this.name,
    required this.weight,
    required this.height,
    required this.birthday,
    required this.dailyCalories,
    required this.dailyProteins,
    required this.dailyFat,
  });

  /// Returns the age of the user
  int getAge() {
    return DateTime.now().difference(birthday.toDate()).inDays ~/ 365;
  }

  /// Converts a document object from firestore to a User object
  ///
  /// [document] the document object retrieved from firestore
  static User fromMap(Map<String, dynamic> document) {
    return User(
        name: document["name"],
        weight: document["weight"],
        height: document["height"],
        birthday: document["birthday"],
        dailyCalories: document["dailyCalories"],
        dailyProteins: document["dailyProteins"],
        dailyFat: document["dailyFat"]);
  }

  @override
  String toString() {
    return 'User{name: $name, weight: $weight, height: $height, birthday: $birthday, dailyCalories: $dailyCalories, dailyProteins: $dailyProteins, dailyFat: $dailyFat}';
  }
}
