import 'package:ambition/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class DomainUser with _$DomainUser {
  const factory DomainUser({
    @required UniqueId id,
  }) = _User;
}
