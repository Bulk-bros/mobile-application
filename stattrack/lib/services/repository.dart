import 'package:stattrack/models/consumed_meal.dart';
import 'package:stattrack/models/user.dart';

abstract class Repository {
  /// Returns a stream with the user that has the user id specified
  /// If no user is found with the given id, a stream of null is returned
  ///
  /// [uid] the user id of the user to find
  Stream<User?> getUsers(String uid);

  /// Adds a user to the database
  ///
  /// [user] the user to add
  /// [uid] the id of the user to add
  void addUser(User user, String uid);

  /// Returns a stream with the consumed meals of the user with the given id
  ///
  /// [uid] the user id of the user to find the consumed meals of
  Stream<List<ConsumedMeal>> getLog(String uid);

  Stream<List<ConsumedMeal>> getTodaysMeals(String uid);
}
