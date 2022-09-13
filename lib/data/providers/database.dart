import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:utua_test/data/models/user.dart';

class Database {
  static final _source = FirebaseFirestore.instance;

  static final _users = _source.collection('users').withConverter<User>(
        fromFirestore: (snapshots, _) => User.fromJson(snapshots.data()!),
        toFirestore: (user, _) => user.toJson(),
      );

  static Future<void> addUser(User user) async {
    await _users.add(user);
  }
}
