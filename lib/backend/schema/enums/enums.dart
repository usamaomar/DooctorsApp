import 'package:collection/collection.dart';

enum PageNameEnum {
  PatientInformation,
}

enum UserType {
  Doctor,
  Patient,
  Developer,
  Assistent,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (PageNameEnum):
      return PageNameEnum.values.deserialize(value) as T?;
    case (UserType):
      return UserType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
