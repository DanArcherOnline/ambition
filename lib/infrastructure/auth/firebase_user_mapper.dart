import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:ambition/domain/auth/user.dart';
import 'package:ambition/domain/core/value_object.dart';

extension FirebaseUserMapperX on firebase_auth.User {
  DomainUser toDomain() {
    return DomainUser(id: UniqueId.fromUniqueString(uid));
  }
}
